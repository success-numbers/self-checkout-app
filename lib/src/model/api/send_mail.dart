// {
// "order_id": "7236682482",
// "store_name": "",
// "store_address": "",
// "receiver_email": "pratyushharsh2015@gmail.com",
// "pdf_receipt": "JVB"
// }

class SendMailRequest {
  String? orderId;
  String? storeName;
  String? storeAddress;
  String? receiverEmail;
  String? pdfReceipt;

  SendMailRequest({
    this.orderId,
    this.storeName,
    this.storeAddress,
    this.receiverEmail,
    this.pdfReceipt,
  });

  SendMailRequest.fromJson(Map<String, dynamic> json) {
    orderId = json['order_id'];
    storeName = json['store_name'];
    storeAddress = json['store_address'];
    receiverEmail = json['receiver_email'];
    pdfReceipt = json['pdf_receipt'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['order_id'] = orderId;
    data['store_name'] = storeName;
    data['store_address'] = storeAddress;
    data['receiver_email'] = receiverEmail;
    data['pdf_receipt'] = pdfReceipt;
    return data;
  }
}