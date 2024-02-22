part of 'med_bloc.dart';

abstract class MedEvent {}

class SetGuestCustomer extends MedEvent {
  final LoyalyticCustomer customer = LoyalyticCustomer(
    name: "Guest",
    loyalyticBalance: 0,
    loyalyticId: "000000000000"
  );

  SetGuestCustomer();
}

class SetLoyalyticCustomer extends MedEvent {
  final String? phoneNo;
  final String? loyalyticId;

  SetLoyalyticCustomer({this.phoneNo, this.loyalyticId});
}

class UpdateActionStep extends MedEvent {
  final MedListStep? step;
  UpdateActionStep({this.step});
}

class EmployeeLoggedEvent extends MedEvent {
  bool? employeeLoggedIn;

  EmployeeLoggedEvent({this.employeeLoggedIn});
}

class ShowErrorPromptEvent extends MedEvent {
  final String? message;

  ShowErrorPromptEvent({this.message});
}