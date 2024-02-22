import 'package:amazon_cognito_identity_dart_2/cognito.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:logging/logging.dart';
import 'package:path_provider/path_provider.dart';
import 'package:printing/printing.dart';

import '../../../config/store_config_manager.dart';
import '../../../entity/pos/business_entity.dart';
import '../../../model/api/clock_in_out_request_response.dart';
import '../../../repositories/business_repository.dart';
import '../../../database/db_provider.dart';
import '../../../entity/pos/employee_entity.dart';
import '../../../model/api/api.dart';
import '../../../repositories/employee_repository.dart';
import '../../../util/cache/custom_pdf_cache.dart';
import '../../../util/helper/rest_api.dart';
import '../../error/bloc/error_notification_bloc.dart';

part 'authentication_event.dart';
part 'authentication_state.dart';

class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  final log = Logger('AuthenticationBloc');
  final bool test = false;

  final CognitoUserPool userPool;
  final BusinessRepository businessRepository;
  final EmployeeRepository employeeRepository;
  final ErrorNotificationBloc errorNotificationBloc;

  AuthenticationBloc(
      {required this.userPool,
      required this.businessRepository,
      required this.employeeRepository,
      required this.errorNotificationBloc})
      : super(const AuthenticationState.unknown()) {
    // signInIfSessionAvailable();
    on<AuthenticationUserChanged>(_onUserChanged);
    on<InitialAuthEvent>(_onInitialAuth);
    on<VerifyUserOtpStep>(_onVerifyUser);
    on<VerifyUserDeviceStep>(_onVerifyUserDevice);
    on<LogOutUserEvent>(_logOutUser);
    on<NewUserPassword>(_newUserPassword);
    on<ClockOutUserEvent>(_onClockOutUserEvent);
    on<ClockInUserEvent>(_onClockInUserEvent);
    // on<ChooseBusinessEvent>(_chooseBusinessEvent);
    on<RefreshBusinessEvent>(_refreshBusinessEvent);
    on<ChangeBusinessAccount>(_changeBusinessAccount);
  }

  void _onInitialAuth(
      InitialAuthEvent event, Emitter<AuthenticationState> emit) async {
    _loadConfigDataIfNotPresent();
    try {
      var user = await userPool.getCurrentUser();
      if (user != null && user.getUsername() != null) {
        // Three Scenario when user logged in
        // He is new user need to register for a business.
        // He owns multiple business need to choose which one to login. @TODO
        // Only one business directly login to system.
        var session = await user.getSession();
        if (session == null) {
          emit(const AuthenticationState.unknown());
          return;
        }

        var validSession = session.isValid();
        if (!validSession) {
          emit(const AuthenticationState.unauthenticated());
          return;
        }
        var curStore = await userPool.storage.getItem("CURRENT_STORE");
        // List<CognitoUserAttribute>? attrib = await user.getUserAttributes();

        // CognitoUserAttribute? userIdAttribute = attrib?.firstWhere((element) => element.name == 'sub');
        // if (userIdAttribute == null) {
        //   emit(AuthenticationState.unknown());
        //   errorNotificationBloc.add(ErrorEvent('User Id not found in user attributes'));
        //   return;
        // }

        String userId = user.getUsername()!;

        //
        // return;
        if (curStore == null) {
          var businessList =
              await employeeRepository.getBusinessAssociatedWithUser(userId);
          emit(AuthenticationState.chooseBusiness(businessList));
        } else {
          await DatabaseProvider.switchDatabase(curStore);
          // Get business from cache
          var business =
              await businessRepository.getBusinessById(int.parse(curStore));
          var userDetail = await employeeRepository.getEmployeeByStoreAndUserId(
              curStore, userId);

          emit(state.copyWith(store: business, employee: userDetail));

          bool clokOutNeeded = false;
          var clockedInAtFromLocalStorage =
              await userPool.storage.getItem("CLOCKED_IN_DATE");
          DateTime? lastClockedInAtDate = userDetail?.getLastClockedIn() ??
              (clockedInAtFromLocalStorage != null
                  ? DateTime.parse(clockedInAtFromLocalStorage)
                  : null);

          if (lastClockedInAtDate != null) {
            lastClockedInAtDate = lastClockedInAtDate.toUtc();
            DateTime clockinBusinessCloseTime = DateTime(
                lastClockedInAtDate.year,
                lastClockedInAtDate.month,
                lastClockedInAtDate.day,
                business.storeOpenTime != null
                    ? int.parse(business.storeOpenTime!.substring(0, 2))
                    : 9,
                business.storeOpenTime != null
                    ? int.parse(business.storeOpenTime!.substring(3))
                    : 00).add(Duration(hours: business.storeOperatingHours != null?
            int.parse(business.storeOperatingHours!):9)).toUtc();
            if (clockinBusinessCloseTime.isBefore(lastClockedInAtDate)) {
              clockinBusinessCloseTime =
                  clockinBusinessCloseTime.add(const Duration(days: 1));
            }
            if (clockinBusinessCloseTime.isBefore(DateTime.now())) {
              clokOutNeeded = true;
            }
          }
          if (lastClockedInAtDate == null) {
            emit(state.copyWith(status: AuthenticationStatus.clockInRequired));
          } else {
            StoreConfigCacheManager.init(
                storeId: int.parse(curStore),
                workstationId: int.parse('${userDetail?.registerId ?? 0}'),
                userId: user.getUsername()!,
                userName:
                    '${userDetail?.firstName ?? ""} ${userDetail?.lastName}',
                userEmail: '${userDetail?.email}',
                lastClockedIn: lastClockedInAtDate);
            var configData = {
              for (var e in business.config) e.split("|")[0]: e.split("|")[1]
            };
            // if (clokOutNeeded) {
            //   emit(state.copyWith(status: AuthenticationStatus.clockOutRecommended));
            // }
            emit(AuthenticationState.authenticated(
                user, business, userDetail!, configData));
          }
        }
      } else {
        emit(const AuthenticationState.unknown());
      }
    } catch (e, st) {
      log.severe(e.toString(), e, st);
      errorNotificationBloc.add(ErrorEvent(e.toString()));
      emit(const AuthenticationState.unauthenticated());
    }
  }

  void _onUserChanged(
      AuthenticationUserChanged event, Emitter<AuthenticationState> emit) {
    add(InitialAuthEvent());
  }

  void _onVerifyUser(
      VerifyUserOtpStep event, Emitter<AuthenticationState> emit) async {
    emit(const AuthenticationState.verifyUser());
  }

  void _onVerifyUserDevice(
      VerifyUserDeviceStep event, Emitter<AuthenticationState> emit) async {
    emit(const AuthenticationState.verifyUserDevice());
  }

  void _onClockOutUserEvent(
      ClockOutUserEvent event, Emitter<AuthenticationState> emit) async {
    emit(state.copyWith(status: AuthenticationStatus.clockInChecking));
    await userPool.storage.removeItem("CLOCKED_IN_DATE");
    await employeeRepository.clockInOutEmployee(
        state.store!.rtlLocId.toString(),
        state.employee!.employeeId!,
        EmployeeClockEventTypes.CLOCK_OUT);
    add(InitialAuthEvent());
  }

  void _onClockInUserEvent(
      ClockInUserEvent event, Emitter<AuthenticationState> emit) async {
    emit(state.copyWith(status: AuthenticationStatus.clockInChecking));
    await userPool.storage
        .setItem("CLOCKED_IN_DATE", DateTime.now().toString());
    bool clockEventSuccess = await employeeRepository.clockInOutEmployee(
        state.store!.rtlLocId.toString(),
        state.employee!.employeeId!,
        EmployeeClockEventTypes.CLOCK_IN);
    if(clockEventSuccess){
      add(InitialAuthEvent());
    }
    else{
      emit(state.copyWith(status: AuthenticationStatus.clockInFailed));
    }
  }

  void _logOutUser(
      LogOutUserEvent event, Emitter<AuthenticationState> emit) async {
    var tmp = await userPool.getCurrentUser();
    if (tmp != null) {
      await tmp.signOut();
      // await tmp.clearCachedTokens();
      await tmp.storage.removeItem("CURRENT_STORE");
      await userPool.storage.removeItem("CLOCKED_IN_DATE");
      // await _deleteTheFilesFromCache();
      emit(const AuthenticationState.unknown());
      // await DatabaseProvider.closeAllDatabaseExceptDefault();
      // PdfBaseCache.defaultCache = CustomPdfCache();
    } else {
      emit(const AuthenticationState.unknown());
    }
  }

  void _newUserPassword(
      NewUserPassword event, Emitter<AuthenticationState> emit) async {
    emit(const AuthenticationState.newUserPassword());
  }

  // void _chooseBusinessEvent(
  //     ChooseBusinessEvent event, Emitter<AuthenticationState> emit) async {
  //   emit(state.copyWith(status: AuthenticationStatus.chooseBusinessLoading));
  //   var user = await userPool.getCurrentUser();
  //   await user!.getSession();
  //   await user.storage.setItem("CURRENT_STORE", event.business.storeId);
  //   // Change the database for new business.
  //   var business = await businessRepository
  //       .getBusinessById(int.parse(event.business.storeId!));
  //   var userDetail = await employeeRepository.getEmployeeByStoreAndUserId(
  //       event.business.storeId!, user.getUsername()!);
  //   emit(AuthenticationState.authenticated(user, business, userDetail!));
  // }

  void _refreshBusinessEvent(
      RefreshBusinessEvent event, Emitter<AuthenticationState> emit) async {
    if (state.store != null) {
      var business =
          await businessRepository.getBusinessById(state.store!.rtlLocId);
      emit(state.copyWith(store: business));
    }
  }

  Future<void> _loadConfigDataIfNotPresent() async {
  }

  Future<void> _deleteTheFilesFromCache() async {
    final dir = await getApplicationSupportDirectory();
    final files = await dir.delete(recursive: true);
    log.info("Deleted files from cache $files");
  }

  void _changeBusinessAccount(
      ChangeBusinessAccount event, Emitter<AuthenticationState> emit) async {
    // add a state for change business account
    emit(state.copyWith(status: AuthenticationStatus.chooseBusinessLoading));
    var user = await userPool.getCurrentUser();
    await user!.storage.setItem("CURRENT_STORE", event.rtlLocId);
    // Switch the database.
    add(InitialAuthEvent());
    // await DatabaseProvider.switchDatabase(event.rtlLocId);
    // //
    // var business =
    //     await businessRepository.getBusinessById(int.parse(event.rtlLocId));
    // var userDetail = await employeeRepository.getEmployeeByStoreAndUserId(
    //     event.rtlLocId, user.getUsername()!);
    // StoreConfigCacheManager.init(
    //   storeId: int.parse(event.rtlLocId),
    //   workstationId: int.parse('${userDetail?.registerId ?? 0}'),
    //   userId: user.getUsername()!,
    //   userName: '${userDetail?.firstName ?? ""} ${userDetail?.lastName}',
    //   userEmail: '${userDetail?.email}',);
    // emit(AuthenticationState.authenticated(user, business, userDetail!));
    // sync.add(StartSyncEvent(business.rtlLocId));
  }
}
