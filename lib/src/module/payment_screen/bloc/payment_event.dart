part of 'payment_bloc.dart';

@immutable
abstract class PaymentEvent {}

class PayActionEvent extends PaymentEvent {
  final TransactionHeaderEntity trans;

  PayActionEvent({required this.trans});
}

class PayPrintAction extends PaymentEvent {
  PayPrintAction();
}

class PayEmailAction extends PaymentEvent {
  PayEmailAction();
}

class PayEmailAndPrintAction extends PaymentEvent {
  PayEmailAndPrintAction();
}

class UpdateTenderEvent extends PaymentEvent {
  final TransactionPaymentLineItemEntity tender;

  UpdateTenderEvent({required this.tender});
}

class InitializeTenderEvent extends PaymentEvent{}
