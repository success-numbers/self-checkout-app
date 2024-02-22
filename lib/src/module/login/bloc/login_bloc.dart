import 'dart:io';
import 'dart:convert';
import 'package:amazon_cognito_identity_dart_2/cognito.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logging/logging.dart';

import '../../../entity/pos/entity.dart';
import '../../authentication/bloc/authentication_bloc.dart';
import '../../error/bloc/error_notification_bloc.dart';
import '../LoginValidator.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final log = Logger('LoginBloc');

  final CognitoUserPool userPool;
  final AuthenticationBloc authenticationBloc;
  final ErrorNotificationBloc errorNotificationBloc;

  LoginBloc(
      {required this.userPool,
      required this.authenticationBloc,
      required this.errorNotificationBloc})
      : super(const LoginState()) {
    on<LoginUserWithPhone>(_onLoginUserWithPhone);
    on<LoginUserWithUsernamePassword>(_onLoginUserWithUsernamePassword);
    on<VerifyUserOtp>(_onVerifyUserOtp);
    on<RemoveDevice>(_onRemoveDeviceEvent);
    on<OnCountryChange>(_onCountryChange);
    on<OnUsernameChange>(_onUsernameChange);
    on<OnPasswordChange>(_onPasswordChange);
    on<OnNewPasswordAnswer>(_onNewPasswordAnswer);
    on<OnNewPasswordChange>(_onNewPasswordChange);
    on<OnOtpChange>(_onOtpChange);
    on<OnResetLogin>(_onResetLogin);
  }

  Future<void> _clearCache() async {
    var itm = userPool.storage.getItem("CURRENT_STORE");
    await userPool.storage.removeItem("CURRENT_STORE");
  }

  Future<void> _signUpUser(String phoneNumber) async {
    try {
      await userPool.signUp(phoneNumber, phoneNumber);
      add(LoginUserWithPhone(phoneNumber));
    } on CognitoClientException catch (e) {
      errorNotificationBloc
          .add(ErrorEvent(e.message ?? e.name ?? 'Contact support'));
      rethrow;
    } catch (e) {
      rethrow;
    }
  }

  void _onLoginUserWithPhone(
      LoginUserWithPhone event, Emitter<LoginState> emit) async {
    emit(state.copyWith(status: LoginStatus.loadingLogin));
    CognitoUser? cognitoUser;
    try {
      // userPool.getCurrentUser()
      DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();

      String deviceName = '';

      if (Platform.isIOS) {
        IosDeviceInfo info = await deviceInfo.iosInfo;
        deviceName =
            '${info.name}:${info.model}:${info.systemName}:${info.systemVersion}';
      } else if (Platform.isAndroid) {
        AndroidDeviceInfo info = await deviceInfo.androidInfo;
        deviceName = '${info.device} | ${info.display}';
      } else if (Platform.isMacOS) {
        MacOsDeviceInfo info = await deviceInfo.macOsInfo;
        deviceName = '${info.computerName} | ${info.osRelease}';
      } else if (Platform.isWindows) {
        WindowsDeviceInfo info = await deviceInfo.windowsInfo;
        deviceName =
            '${info.registeredOwner}:${info.numberOfCores}:${info.systemMemoryInMegabytes}';
      }
      log.info("Logging to $deviceName}");

      cognitoUser =
          CognitoUser(event.phoneNumber, userPool, deviceName: deviceName);
      // cognitoUser.setAuthenticationFlowType('CUSTOM_AUTH');
      emit(state.copyWith(user: cognitoUser));

      cognitoUser.authenticateUser(
          AuthenticationDetails(authParameters: List.empty()));

      var userSession = await cognitoUser
          .initiateAuth(AuthenticationDetails(authParameters: List.empty()));
      log.info(userSession);
    } on CognitoUserCustomChallengeException catch (e) {
      Map<String, dynamic> challengeParameters = e.challengeParameters;
      String? challengeStep = challengeParameters['challenge_step'];
      if (challengeStep != null && challengeStep == 'VERIFY_OTP') {
        authenticationBloc.add(VerifyUserOtpStep(challengeParameters));
        emit(state.copyWith(status: LoginStatus.verifyOtp));
      } else {
        emit(state.copyWith(
            status: LoginStatus.failure,
            error: 'Invalid Authentication Method'));
      }
    } on CognitoClientException catch (e) {
      if (e.code == "UserNotFoundException") {

        log.severe(e);
        emit(state.copyWith(status: LoginStatus.failure, error: e.toString()));
      }
    } catch (e) {
      log.severe(e);
      emit(state.copyWith(status: LoginStatus.failure, error: e.toString()));
    }
  }

  void _onLoginUserWithUsernamePassword(
      LoginUserWithUsernamePassword event, Emitter<LoginState> emit) async {
    emit(state.copyWith(status: LoginStatus.loadingLogin));
    await _clearCache();

    CognitoUser? cognitoUser;
    try {
      // userPool.getCurrentUser()
      DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();

      String deviceName = '';

      if (Platform.isIOS) {
        IosDeviceInfo info = await deviceInfo.iosInfo;
        deviceName =
            '${info.name}:${info.model}:${info.systemName}:${info.systemVersion}';
      } else if (Platform.isAndroid) {
        AndroidDeviceInfo info = await deviceInfo.androidInfo;
        deviceName = '${info.device} | ${info.display}';
      } else if (Platform.isMacOS) {
        MacOsDeviceInfo info = await deviceInfo.macOsInfo;
        deviceName = '${info.computerName}|${info.systemGUID}';
      } else if (Platform.isWindows) {
        WindowsDeviceInfo info = await deviceInfo.windowsInfo;
        deviceName =
            '${info.registeredOwner}:${info.numberOfCores}:${info.systemMemoryInMegabytes}';
      }
      log.info("Logging to $deviceName}");

      cognitoUser =
          CognitoUser(event.username, userPool, deviceName: deviceName);
      // cognitoUser.setAuthenticationFlowType('CUSTOM_AUTH');
      emit(state.copyWith(user: cognitoUser));
      
      // cognitoUser.verifyAttribute(attributeName, confirmationCode)

      var userSession = await cognitoUser.authenticateUser(
          AuthenticationDetails(
              username: event.username,
              password: event.password,
              authParameters: List.empty()));
      log.info(userSession);
      authenticationBloc.add(InitialAuthEvent());
    } on CognitoUserCustomChallengeException catch (e) {
      Map<String, dynamic> challengeParameters = e.challengeParameters;
      String? challengeStep = challengeParameters['challenge_step'];
      if (challengeStep != null && challengeStep == 'VERIFY_OTP') {
        authenticationBloc.add(VerifyUserOtpStep(challengeParameters));
        emit(state.copyWith(status: LoginStatus.verifyOtp));
      } else {
        emit(state.copyWith(
            status: LoginStatus.failure,
            error: 'Invalid Authentication Method'));
      }
    } on CognitoClientException catch (e) {
      
      if (e.code == "UserNotFoundException") {
        errorNotificationBloc.add(ErrorEvent(e.message ?? 'User not found'));
        emit(state.copyWith(status: LoginStatus.failure, error: e.toString()));
        log.severe(e);
      } else {
        errorNotificationBloc.add(ErrorEvent(e.message ?? 'Unknown Error'));
        emit(state.copyWith(status: LoginStatus.failure, error: e.toString()));
        log.severe(e);
      }
    } on CognitoUserNewPasswordRequiredException catch (e) {
      authenticationBloc.add(NewUserPassword(e.requiredAttributes ?? []));
      emit(state.copyWith(status: LoginStatus.newUserPassword));
    } on CognitoUserException catch (e) {
      errorNotificationBloc.add(ErrorEvent(e.message ?? 'Unknown Error'));
      emit(state.copyWith(status: LoginStatus.failure, error: e.toString()));
      log.severe(e);
    } catch (e) {
      log.severe(e);
      emit(state.copyWith(status: LoginStatus.failure, error: e.toString()));
    }
  }

  void _getUserDetail() async {
    CognitoUser user = state.user!;
    var tmp = await userPool.getCurrentUser();
    await user.getSession();
    var userAttribute = await user.getUserAttributes();
    log.info(tmp);
    if (tmp != null && userAttribute != null) {
      CognitoUserAttribute? stores;
      for (var x = 0; x < userAttribute.length; x++) {
        if (userAttribute[x].name == "custom:allocated_store") {
          stores = userAttribute[x];
          break;
        }
      }
      authenticationBloc
          .add(AuthenticationUserChanged(tmp, stores, userAttribute));
    }
  }

  void _onVerifyUserOtp(VerifyUserOtp event, Emitter<LoginState> emit) async {
    // Loading
    try {
      emit(state.copyWith(
          retryCount: state.retryCount + 1,
          status: LoginStatus.verifyOtpLoading));
      CognitoUser user = state.user!;
      var res = await user.sendCustomChallengeAnswer(event.otp);
      log.info(res);
      authenticationBloc.add(InitialAuthEvent());
    } on CognitoUserCustomChallengeException catch (e) {
      // log.severe(e);
      // Check if Custom Challenge is for OTP then it is error
      Map<String, dynamic> challengeParameters = e.challengeParameters;
      String? challengeStep = challengeParameters['challenge_step'];
      if (challengeStep != null && challengeStep == 'VERIFY_OTP') {
        errorNotificationBloc.add(ErrorEvent('Invalid OTP'));
        emit(state.copyWith(
            status: LoginStatus.verifyOtp, retryCount: state.retryCount + 1));
      } else if (challengeStep != null && challengeStep == 'VERIFY_DEVICE') {
        var deviceList =
            json.decode(e.challengeParameters['device_list']) as List<dynamic>;
        authenticationBloc.add(VerifyUserDeviceStep(e.challengeParameters));
        CognitoUser user = state.user!;
        String deviceKeyPrefix = '${user.keyPrefix}.deviceKey';
        var deviceKey = await userPool.storage.getItem(deviceKeyPrefix);
        log.info("Current device key: $deviceKey");
        emit(state.copyWith(
            status: LoginStatus.verifyDevice,
            deviceList: deviceList,
            deviceKey: deviceKey));
      }
    } catch (e) {
      log.severe(e);
      errorNotificationBloc.add(ErrorEvent(e.toString()));
    }
  }

  void _onRemoveDeviceEvent(
      RemoveDevice event, Emitter<LoginState> emit) async {
    // Loading
    try {
      emit(state.copyWith(status: LoginStatus.verifyDeviceLoading));
      CognitoUser user = state.user!;
      await user.sendCustomChallengeAnswer(
          event.devices.isNotEmpty ? event.devices.join(';') : ' ');
      _getUserDetail();
    } catch (e) {
      log.severe(e);
      emit(state.copyWith(status: LoginStatus.failure));
    }
  }

  void _onCountryChange(OnCountryChange event, Emitter<LoginState> emit) async {
    emit(state.copyWith(country: event.country));
  }

  void _onUsernameChange(
      OnUsernameChange event, Emitter<LoginState> emit) async {
    emit(state.copyWith(username: event.username));
  }

  void _onPasswordChange(
      OnPasswordChange event, Emitter<LoginState> emit) async {
    emit(state.copyWith(password: event.password));
  }

  void _onNewPasswordChange(
      OnNewPasswordChange event, Emitter<LoginState> emit) async {
    emit(state.copyWith(newPassword: event.newPassword));
  }

  void _onNewPasswordAnswer(
      OnNewPasswordAnswer event, Emitter<LoginState> emit) async {
    try {
      CognitoUser user = state.user!;
      var res = await user.sendNewPasswordRequiredAnswer(event.newPassword);
      log.info(res);
      authenticationBloc.add(InitialAuthEvent());
    } catch (e) {
      log.severe(e);
      errorNotificationBloc.add(ErrorEvent(e.toString()));
    }
  }

  void _onOtpChange(OnOtpChange event, Emitter<LoginState> emit) async {
    emit(state.copyWith(otp: event.otp));
  }
  void _onResetLogin(OnResetLogin event, Emitter<LoginState> emit) async {
    const initialState = LoginState();
    emit(initialState);
  }

}
