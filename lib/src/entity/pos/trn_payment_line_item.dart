import 'package:isar/isar.dart';
part 'trn_payment_line_item.g.dart';

@embedded
class TransactionPaymentLineItemEntity {

  String? transId;
  int? paymentSeq;
  double? amount;
  double? tip;
  DateTime? beginDate;
  DateTime? endDate;
  String? currencyId;
  String? tenderId;
  String? tenderStatusCode;
  String? authCode;
  String? token;
  bool isVoid;
  double? receivedAmount;
  double? changeAmount;

  TransactionPaymentLineItemEntity(
      {
      this.transId,
      this.paymentSeq,
      this.amount,
      this.beginDate,
      this.endDate,
      this.currencyId,
      this.tenderId,
      this.tenderStatusCode,
      this.authCode,
      this.token,
      this.isVoid = false,
      this.receivedAmount,
      this.changeAmount = 0,
        this.tip = 0
      });
}
