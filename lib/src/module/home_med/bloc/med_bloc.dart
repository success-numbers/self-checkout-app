import 'package:bloc/bloc.dart';
import 'package:logging/logging.dart';

import '../../../model/api/loyalytic_customer_request.dart';
import '../../../repositories/med_repository.dart';
import '../../error/bloc/error_notification_bloc.dart';

part 'med_event.dart';
part 'med_state.dart';

class MedBloc extends Bloc<MedEvent, MedState> {

  final log = Logger('MedBloc');
  final MedRepository medRepository;
  final ErrorNotificationBloc errorNotificationBloc;

  MedBloc({ required this.medRepository, required this.errorNotificationBloc}) : super(MedState()) {
    on<SetGuestCustomer>(_onSetGuestCustomer);
    on<SetLoyalyticCustomer>(_onSetLoyalyticCustomerEvent);
    on<UpdateActionStep>(_onUpdateActionStep);
    on<EmployeeLoggedEvent>(_onEmployeeLoggedIn);
    on<ShowErrorPromptEvent>(_onShowErrorPrompt);
  }

  void _onSetGuestCustomer(SetGuestCustomer event, Emitter<MedState> emit) {
    emit(state.copyWith(currentCustomer: event.customer));
  }

  void _onSetLoyalyticCustomerEvent(SetLoyalyticCustomer event, Emitter<MedState> emit) async {
    emit(state.copyWith(status: MedListStatus.loading));
    try {
      if(event.phoneNo != null){
        var data = await medRepository.fetchCustomerDetailsByPhoneNo(event.phoneNo ?? "");
        emit(state.copyWith(currentCustomer: data, step: MedListStep.loggedIn));
      }
      if(event.loyalyticId != null){
        var data = await medRepository.fetchCustomerDetailsByLoyalyticId(event.loyalyticId ?? "");
        emit(state.copyWith(currentCustomer: data, step: MedListStep.loggedIn));
      }
    } catch (e) {
      log.severe(e);
      emit(state.copyWith(step: MedListStep.existingUser));
      errorNotificationBloc.add(ErrorEvent(e.toString()));
    }
    emit(state.copyWith(status: MedListStatus.initial));
  }

  void _onUpdateActionStep(UpdateActionStep event, Emitter<MedState> emit) async {
    try {
      if(event.step != null){
        emit(state.copyWith(step: event.step));
      }
    } catch (e) {
      log.severe(e);
      errorNotificationBloc.add(ErrorEvent(e.toString()));
    }

  }

  void _onEmployeeLoggedIn(EmployeeLoggedEvent event, Emitter<MedState> emit){
    emit(state.copyWith(employeeLoggedIn: event.employeeLoggedIn));
  }

  void _onShowErrorPrompt(ShowErrorPromptEvent event, Emitter<MedState> emit){
    errorNotificationBloc.add(ErrorEvent(event.message ?? ''));
    // emit(state.copyWith(status: MedListStatus.initial));
  }
}
