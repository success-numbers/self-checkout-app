part of 'self_checkout_bloc.dart';

abstract class SelfCheckoutEvent {}

class InitializeCartEvent extends SelfCheckoutEvent{}

class AddItemToCartEvent extends SelfCheckoutEvent {
  LineItemEntity? lineItem;

  AddItemToCartEvent({this.lineItem});
}

class RemoveItemFromCartEvent extends SelfCheckoutEvent {
  LineItemEntity? lineItem;

  RemoveItemFromCartEvent({this.lineItem});
}

class AddCustomerToTransEvent extends SelfCheckoutEvent {
  LoyalyticCustomer customer;

  AddCustomerToTransEvent({required this.customer});
}