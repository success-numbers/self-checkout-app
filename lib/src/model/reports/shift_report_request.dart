class ShiftReportRequest {
  List<OpenAccounts>? openAccounts;
  double? validReceipts;
  double? voidReceipts;
  double? openAccountsCount;
  double? totalAccounts;
  double? draftReceipts;
  double? duplicateReceipts;
  double? directSales;
  double? tableSales;
  double? coversCount;
  double? daySales;
  double? voidReceiptsVal;
  double? voidItemsVal;
  double? ownSales;
  double? comps;
  double? loss;
  double? totalWODiscount;
  double? discounts;
  double? totalSales;
  double? receivedPayment;
  double? voidedPayments;
  double? surcharges;
  double? ownPaymentsCount;
  double? ownPayments;
  double? receivedTip;
  double? cashTip;
  double? laterTip;
  double? dueCash;
  Map<String, PaymentDetail>? paymentDetails;
  Map<String, TipDetails>? tipDetails;

  ShiftReportRequest(
      {this.openAccounts,
        this.validReceipts,
        this.voidReceipts,
        this.openAccountsCount,
        this.totalAccounts,
        this.draftReceipts,
        this.duplicateReceipts,
        this.directSales,
        this.tableSales,
        this.coversCount,
        this.daySales,
        this.voidReceiptsVal,
        this.voidItemsVal,
        this.ownSales,
        this.comps,
        this.loss,
        this.totalWODiscount,
        this.discounts,
        this.totalSales,
        this.receivedPayment,
        this.voidedPayments,
        this.surcharges,
        this.ownPaymentsCount,
        this.ownPayments,
        this.receivedTip,
        this.cashTip,
        this.laterTip,
        this.dueCash,
        this.paymentDetails,
        this.tipDetails});

  ShiftReportRequest.fromJson(Map<String, dynamic> json) {
    if (json['openAccounts'] != null) {
      openAccounts = <OpenAccounts>[];
      json['openAccounts'].forEach((v) {
        openAccounts!.add(OpenAccounts.fromJson(v));
      });
    }
    validReceipts = json['validReceipts'].toDouble();
    voidReceipts = json['voidReceipts'].toDouble();
    openAccountsCount = json['openAccountsCount'].toDouble();
    totalAccounts = json['totalAccounts'].toDouble();
    draftReceipts = json['draftReceipts'].toDouble();
    duplicateReceipts = json['duplicateReceipts'].toDouble();
    directSales = json['directSales'].toDouble();
    tableSales = json['tableSales'].toDouble();
    coversCount = json['coversCount'].toDouble();
    daySales = json['daySales'].toDouble();
    voidReceiptsVal = json['voidReceiptsVal'].toDouble();
    voidItemsVal = json['voidItemsVal'].toDouble();
    ownSales = json['ownSales'].toDouble();
    comps = json['comps'].toDouble();
    loss = json['loss'].toDouble();
    totalWODiscount = json['totalWODiscount'].toDouble();
    discounts = json['discounts'].toDouble();
    totalSales = json['totalSales'].toDouble();
    receivedPayment = json['receivedPayment'].toDouble();
    voidedPayments = json['voidedPayments'].toDouble();
    surcharges = json['surcharges'].toDouble();
    ownPaymentsCount = json['ownPaymentsCount'].toDouble();
    ownPayments = json['ownPayments'].toDouble();
    receivedTip = json['receivedTip'].toDouble();
    cashTip = json['cashTip'].toDouble();
    laterTip = json['laterTip'].toDouble();
    dueCash = json['dueCash'].toDouble();

    //  Iterate and add to map
    paymentDetails = <String, PaymentDetail>{};
    if (json['paymentDetails'] != null) {
      Map<String, dynamic> paymentDetailsMap = json['paymentDetails'];
      paymentDetailsMap.forEach((key, value) {
        paymentDetails![key] = PaymentDetail.fromJson(value);
      });
    }

    //  Iterate and add to map for tip detail
    tipDetails = <String, TipDetails>{};
    if (json['tipDetails'] != null) {
      Map<String, dynamic> tipDetailsMap = json['tipDetails'];
      tipDetailsMap.forEach((key, value) {
        tipDetails![key] = TipDetails.fromJson(value);
      });
    }
  }
}

class OpenAccounts {
  String? section;
  String? table;
  String? transactionId;
  double? sold;
  double? paid;
  double? unpaid;

  OpenAccounts(
      {this.section,
        this.table,
        this.transactionId,
        this.sold,
        this.paid,
        this.unpaid});

  OpenAccounts.fromJson(Map<String, dynamic> json) {
    section = json['section'].toString();
    table = json['table'].toString();
    transactionId = json['transactionId'].toString();
    sold = json['sold'].toDouble();
    paid = json['paid'].toDouble();
    unpaid = json['unpaid'].toDouble();
  }
}

class PaymentDetail {
  double? ownPaymentsCount;
  double? ownPayments;
  double? receivedTip;
  double? dueCash;

  PaymentDetail(
      {this.ownPaymentsCount,
        this.ownPayments,
        this.receivedTip,
        this.dueCash});

  PaymentDetail.fromJson(Map<String, dynamic> json) {
    ownPaymentsCount = json['ownPaymentsCount'].toDouble();
    ownPayments = json['ownPayments'].toDouble();
    receivedTip = json['receivedTip'].toDouble();
    dueCash = json['dueCash'].toDouble();
  }
}

class TipDetails {
  double? receivedTip;
  double? cashTip;
  double? laterTip;

  TipDetails({this.receivedTip, this.cashTip, this.laterTip});

  TipDetails.fromJson(Map<String, dynamic> json) {
    receivedTip = json['receivedTip'].toDouble();
    cashTip = json['cashTip'].toDouble();
    laterTip = json['laterTip'].toDouble();
  }
}
