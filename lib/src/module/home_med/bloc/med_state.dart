part of 'med_bloc.dart';

enum MedListStatus {
  initial,
  loading,
  loaded,
  error,
}
enum MedListStep {
  initial,
  existingUser,
  loggedIn,
  cart,
  payment
}
class MedState {
  final MedListStatus status;
  final MedListStep step;
  final LoyalyticCustomer? currentCustomer;
  final bool employeeLoggedIn;

  MedState({
    this.currentCustomer,
    this.status = MedListStatus.initial,
    this.step = MedListStep.initial,
    this.employeeLoggedIn = false
  });

  MedState copyWith({
    LoyalyticCustomer? currentCustomer,
    MedListStatus? status,
    MedListStep? step,
    bool? employeeLoggedIn
  }) {
    return MedState(
      currentCustomer: currentCustomer ?? this.currentCustomer,
      status: status ?? this.status,
      step: step ?? this.step,
      employeeLoggedIn: employeeLoggedIn ?? this.employeeLoggedIn
    );
  }
}
