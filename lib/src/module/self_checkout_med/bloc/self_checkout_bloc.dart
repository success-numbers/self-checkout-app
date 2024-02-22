import 'dart:math';

import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../entity/line_item_entity.dart';
import '../../../entity/trans_header_entity.dart';
import '../../../model/api/loyalytic_customer_request.dart';

part 'self_checkout_event.dart';
part 'self_checkout_state.dart';

class SelfCheckoutBloc extends Bloc<SelfCheckoutEvent, SelfCheckoutState> {
  SelfCheckoutBloc() : super(
      SelfCheckoutState(
        trans: TransactionHeaderEntity(
            transId: (Random().nextInt(90000) + 10000).toString(),
            businessDate: DateTime.now().toUtc(),
            beginDatetime: DateTime.now().toUtc(),
            storeCurrency: 'AED',
            storeLocale: 'en_IN',
            storeId: 1011,
            transactionType: TransactionType.sale,
            total: 0.0,
            taxTotal: 0.0,
            subtotal: 0.0,
            grossSubTotal: 0.0,
            tipTotal: 0.0,
            roundTotal: 0.00,
            discountTotal: 0.00,
            status: TransactionStatus.created,
            associateId: '1111',
            associateName: 'Sumit',
            locked: true
        )
      )) {
    on<InitializeCartEvent>(_onInitializeCartEvent);
    on<AddCustomerToTransEvent>(_onAddCustomerToTrans);
    on<AddItemToCartEvent>(_onAddItemToCartEvent);
    on<RemoveItemFromCartEvent>(_onRemoveItemFromCart);
  }

  void _onInitializeCartEvent(InitializeCartEvent event, Emitter<SelfCheckoutState> emit){
    emit(state.copyWith(trans: state.trans));
  }

  void _onAddItemToCartEvent(AddItemToCartEvent event, Emitter<SelfCheckoutState> emit){
    List<LineItemEntity> newList = [...state.trans.lineItems, event.lineItem!];
    state.trans.lineItems = newList;
    state.trans.subtotal = state.trans.lineItems.fold(0.0, (sum, item) => sum + item.totalBasePrice!);
    state.trans.grossSubTotal = state.trans.lineItems.fold(0.0, (sum, item) => sum + item.totalBasePrice!);
    state.trans.total = state.trans.lineItems.fold(0.0, (sum, item) => sum + item.totalBasePrice!);
    emit(state.copyWith(trans: state.trans));
  }

  void _onRemoveItemFromCart(RemoveItemFromCartEvent event, Emitter<SelfCheckoutState> emit){
    List<LineItemEntity> lineItems = List<LineItemEntity>.from(state.trans.lineItems);
    lineItems.remove(event.lineItem);
    state.trans.lineItems = lineItems;
    state.trans.subtotal = state.trans.lineItems.fold(0.0, (sum, item) => sum + item.totalBasePrice!);
    state.trans.grossSubTotal = state.trans.lineItems.fold(0.0, (sum, item) => sum + item.totalBasePrice!);
    state.trans.total = state.trans.lineItems.fold(0.0, (sum, item) => sum + item.totalBasePrice!);
    emit(state.copyWith(trans: state.trans));
  }

  void _onAddCustomerToTrans(AddCustomerToTransEvent event, Emitter<SelfCheckoutState> emit){
    state.trans.customerId = event.customer.loyalyticId ?? '';
    state.trans.customerName = event.customer.name ?? '';
    state.trans.customerPhone = event.customer.phoneNo ?? '';
    emit(state.copyWith(trans: state.trans));
  }
}