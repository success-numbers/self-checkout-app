part of 'payment_bloc.dart';


enum PaymentLoaderState { initial, inprogress, complete, done }
enum PaymentProcessStep { pay, complete , print, email, redirect}

class PaymentState {
  final PaymentLoaderState loadingControlState;
  final PaymentLoaderState loaderState;
  final PaymentProcessStep paymentProcessStep;
  final double cartTotal;
  final TransactionHeaderEntity? trans;
  final TransactionPaymentLineItemEntity? tender;

  const PaymentState(
      {
        this.loaderState = PaymentLoaderState.initial,
        this.loadingControlState = PaymentLoaderState.initial,
        this.paymentProcessStep = PaymentProcessStep.pay,
        this.cartTotal = 0.00,
        this.trans,
        this.tender
      });

  PaymentState copyWith(
      {PaymentLoaderState? loadingControlState,
        PaymentLoaderState? loaderState,
        PaymentProcessStep? paymentProcessStep,
        double? cartTotal,
        TransactionHeaderEntity? trans,
        TransactionPaymentLineItemEntity? tender
      }) {
    return PaymentState(
      loaderState: loaderState ?? this.loaderState,
      loadingControlState: loadingControlState ?? this.loadingControlState,
      paymentProcessStep: paymentProcessStep ?? this.paymentProcessStep,
      cartTotal: cartTotal ?? this.cartTotal,
      trans: trans ?? this.trans,
      tender: tender ?? this.tender
    );
  }

  @override
  List<Object?> get props => [loadingControlState];

}
