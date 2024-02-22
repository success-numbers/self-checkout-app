class LoyalyticCustomer {
  String? phoneNo;
  String? name;
  int? walletBalance;
  String? loyalyticId;
  int? loyalyticBalance;
  String? message;
  String? email;
  bool? isActive;

  LoyalyticCustomer(
      {this.phoneNo,
        this.name,
        this.walletBalance,
        this.loyalyticId,
        this.loyalyticBalance,
        this.email,
        this.message,
        this.isActive});

  LoyalyticCustomer.fromJson(Map<String, dynamic> json) {
    phoneNo = json['phoneNo'];
    name = json['name'];
    walletBalance = json['walletBalance'];
    loyalyticId = json['loyalyticId'];
    loyalyticBalance = json['loyalyticBalance'];
    email = json['email'];
    message = json['message'];
    isActive = json['isActive'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['phoneNo'] = this.phoneNo;
    data['name'] = this.name;
    data['walletBalance'] = this.walletBalance;
    data['loyalyticId'] = this.loyalyticId;
    data['loyalyticBalance'] = this.loyalyticBalance;
    data['email'] = this.email;
    data['message'] = this.message;
    data['isActive'] = this.isActive;
    return data;
  }
}