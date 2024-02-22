import 'package:isar/isar.dart';

import 'address.dart';
import 'entity.dart';

part 'trn_header_entity.g.dart';

@Collection()
class TransactionHeaderEntity {
  Id? id;

  @Index(
      unique: true, replace: true, type: IndexType.value, caseSensitive: true)
  final String transId;
  final int storeId;
  final String storeLocale;
  final String storeCurrency;

  @Index(type: IndexType.value)
  @Enumerated(EnumType.name)
  final TransactionType transactionType;

  @Index()
  final DateTime businessDate;
  final DateTime beginDatetime;
  DateTime? endDateTime;
  double total;
  double taxTotal;
  double subtotal;
  double grossSubTotal;
  double tipTotal;
  double discountTotal;
  double roundTotal;

  @Index(type: IndexType.value)
  @Enumerated(EnumType.name)
  TransactionStatus status;
  bool isVoid;

  @Index()
  String? customerId;

  @Index()
  String? customerPhone;

  Address? shippingAddress;

  Address? billingAddress;
  String? customerName;

  @Index(type: IndexType.value)
  DateTime? lastChangedAt;

  @Index(type: IndexType.value)
  DateTime? lastSyncAt;

  @Index(type: IndexType.value)
  int? syncState;

  final String? associateId;
  final String? associateName;
  final String? notes;

  @Index(type: IndexType.value)
  bool locked;

  List<TransactionLineItemEntity> lineItems;
  List<TransactionPaymentLineItemEntity> paymentLineItems;

  @Index(type: IndexType.value)
  List<String> returnRef;

  // final lineItems = IsarLinks<TransactionLineItemEntity>();
  // final paymentLineItems = IsarLinks<TransactionPaymentLineItemEntity>();
  String? externalOrderId;
  String? externalOrderSource;
  // property separated by & and key value pairs separated by =
  String? addProperty;

  String? getPropertyByCode(String code) {
    if (addProperty == null) return null;
    // split string by &
    List<String>? properties = addProperty?.split("&");
    // then find the key that matches the code and return the value
    for (String property in properties!) {
      List<String> keyValue = property.split("=");
      if (keyValue[0] == code) {
        return keyValue[1];
      }
    }
    return null;
  }

  void addPropertyByCode(String code, String value) {
    // if duplicate code is passed then it will be overwritten
    if (addProperty == null) {
      addProperty = "$code=$value";
    } else {
      // split string by &
      List<String>? properties = addProperty?.split("&");
      // then find the key that matches the code and return the value
      for (int i = 0; i < properties!.length; i++) {
        List<String> keyValue = properties[i].split("=");
        if (keyValue[0] == code) {
          properties[i] = "$code=$value";
          addProperty = properties.join("&");
          return;
        }
      }
      addProperty = "$addProperty&$code=$value";
    }
  }

  double get paidAmount {
    return paymentLineItems.fold(
        0.0,
        (previousValue, element) =>
            previousValue + (!element.isVoid ? element.amount! : 0.0));
  }

  double get roundedAmount {
    var rawAmount = total - paidAmount;
    var roundedAmount = (rawAmount * 100).roundToDouble() / 100;
    return (total - paidAmount) - roundedAmount;
  }

  bool get isPaid {
    // check if the total and paid is
    return (total - paidAmount - roundedAmount) == 0.0;
  }

  TransactionHeaderEntity(
      {required this.transId,
      required this.storeId,
      required this.storeLocale,
      required this.storeCurrency,
      required this.businessDate,
      required this.beginDatetime,
      required this.transactionType,
      this.endDateTime,
      this.isVoid = false,
      required this.total,
      required this.taxTotal,
        required this.grossSubTotal,
        required this.tipTotal,
      required this.subtotal,
      required this.roundTotal,
      required this.discountTotal,
      required this.status,
      this.locked = false,
      this.lineItems = const [],
      this.paymentLineItems = const [],
      this.customerId,
      this.customerPhone,
      this.shippingAddress,
      this.billingAddress,
      this.customerName,
      this.notes,
      this.lastChangedAt,
      this.lastSyncAt,
      this.syncState,
      this.associateId,
      this.associateName,
      this.returnRef = const [],
      this.externalOrderId,
      this.externalOrderSource,
      this.addProperty});
}

enum TransactionStatus {
  created("CREATED"),
  // pending,
  // approved,
  // rejected,
  voided("VOIDED"),
  suspended("SUSPENDED"),
  completed("COMPLETED"),
  inProgress("IN_PROGRESS"),
  cancelled("CANCELLED"),
  partialPayment("PARTIAL_PAYMENT");

  const TransactionStatus(this.value);
  final String value;
}

enum TransactionType {
  sale("Sale"),
  returns("Return"),
  refund("Refund"),
  exchange("Exchange"),
  payment("Payment"),
  receipt("Receipt");

  final String value;
  const TransactionType(this.value);
}
