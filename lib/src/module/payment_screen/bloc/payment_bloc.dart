import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:selfcheckout/src/entity/pos/trn_payment_line_item.dart';
import 'package:selfcheckout/src/entity/trans_header_entity.dart';

import '../../../../../main.dart';
import '../../../entity/line_item_entity.dart';
import '../../../repositories/med_repository.dart';
import '../../loading_payment/bloc/loading_progress_bloc.dart';
import '../../self_checkout_med/bloc/self_checkout_bloc.dart';

part 'payment_event.dart';
part 'payment_state.dart';

class PaymentBloc extends Bloc<PaymentEvent, PaymentState> {
  final LoadingProgressBloc loadingProgressBloc;
  final SelfCheckoutBloc checkoutBloc;
  final MedRepository medRepo;

  PaymentBloc({ required this.loadingProgressBloc, required this.checkoutBloc, required this.medRepo}) : super(const PaymentState()) {
    on<InitializeTenderEvent>(_onInitializeTender);
    on<PayActionEvent>(_onPayActionEvent);
    on<PayPrintAction>(_onPayPrintAction);
    on<PayEmailAction>(_onPayEmailAction);
    on<PayEmailAndPrintAction>(_onPayEmailAndEmailAction);
    on<UpdateTenderEvent>(_onUpdateTender);
  }

  void _onInitializeTender(InitializeTenderEvent event, Emitter<PaymentState> emit){
    emit(state.copyWith(trans: checkoutBloc.state.trans));
  }

  Future<void> _onPayActionEvent(PayActionEvent event, Emitter<PaymentState> emit) async {
    TransactionHeaderEntity trans = state.trans!;
    state.tender?.paymentSeq = 1;
    // trans.paymentLineItems = [state.tender!]; TODO : Not working paymentLineItems
    trans.paymentLineItems = [];

    trans.status = TransactionStatus.completed;
    trans.endDateTime = DateTime.now().toUtc();
    int i = 1;
    for(LineItemEntity item in trans.lineItems){
      item.lineItemSeq = i++;
      item.storeId = trans.storeId;
    }
    emit(state.copyWith(loaderState: PaymentLoaderState.inprogress, cartTotal: event.trans.total));
    try{
      medRepo.syncTransaction(trans);
      await Future.delayed(const Duration(seconds: 3));
    }catch(e){
      log.severe(e);
    }
    emit(state.copyWith(loaderState: PaymentLoaderState.initial, paymentProcessStep: PaymentProcessStep.complete));
  }

  Future<void> _onPayPrintAction(PayPrintAction event, Emitter<PaymentState> emit) async {
    try{
      loadingProgressBloc
          .add(LoadingEvent(LoadingType.print, LoadingControlState.inprogress));
      await Future.delayed(const Duration(seconds: 3));
      loadingProgressBloc
          .add(LoadingEvent(LoadingType.basic, LoadingControlState.done));
      await Future.delayed(const Duration(seconds: 2));
      loadingProgressBloc
          .add(LoadingEvent(LoadingType.basic, LoadingControlState.initial));
      emit(state.copyWith(paymentProcessStep: PaymentProcessStep.redirect));
    }catch(e){
      log.severe(e);
    }
    loadingProgressBloc
        .add(LoadingEvent(LoadingType.basic, LoadingControlState.initial));
  }

  Future<void> _onPayEmailAction(PayEmailAction event, Emitter<PaymentState> emit) async {
    try{
      loadingProgressBloc
          .add(LoadingEvent(LoadingType.email, LoadingControlState.inprogress));
      await Future.delayed(const Duration(seconds: 3));
      loadingProgressBloc
          .add(LoadingEvent(LoadingType.basic, LoadingControlState.done));
      await Future.delayed(const Duration(seconds: 2));
      loadingProgressBloc
          .add(LoadingEvent(LoadingType.basic, LoadingControlState.initial));
      emit(state.copyWith(paymentProcessStep: PaymentProcessStep.redirect));
    }catch(e){
      log.severe(e);
    }
    loadingProgressBloc
        .add(LoadingEvent(LoadingType.basic, LoadingControlState.initial));
  }

  Future<void> _onPayEmailAndEmailAction(PayEmailAndPrintAction event, Emitter<PaymentState> emit) async {
    try{
      loadingProgressBloc
          .add(LoadingEvent(LoadingType.progressLoader, LoadingControlState.inprogress));
      await Future.delayed(const Duration(seconds: 3));
      loadingProgressBloc
          .add(LoadingEvent(LoadingType.basic, LoadingControlState.done));
      await Future.delayed(const Duration(seconds: 2));
      loadingProgressBloc
          .add(LoadingEvent(LoadingType.basic, LoadingControlState.initial));
      emit(state.copyWith(paymentProcessStep: PaymentProcessStep.redirect));
    }catch(e){
      log.severe(e);
    }
    loadingProgressBloc
        .add(LoadingEvent(LoadingType.basic, LoadingControlState.initial));
  }

  void _onUpdateTender(UpdateTenderEvent event, Emitter<PaymentState> emit){
    TransactionPaymentLineItemEntity tender = TransactionPaymentLineItemEntity(
      transId: state.trans?.transId,
      tenderId: event.tender.tenderId,
      amount: state.trans?.total,
      beginDate: DateTime.now().toUtc(),
      currencyId: state.trans?.storeCurrency
    );
    emit(state.copyWith(tender: tender));
  }
}
