part of 'self_checkout_bloc.dart';

class SelfCheckoutState {
  TransactionHeaderEntity trans;

  SelfCheckoutState({
    required this.trans
  });

  SelfCheckoutState copyWith({
    TransactionHeaderEntity? trans,
  }) {
    return SelfCheckoutState(
        trans: trans ?? this.trans
    );
  }
}