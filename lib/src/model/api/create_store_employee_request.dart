import '../../entity/pos/address.dart';

class CreateStoreEmployeeRequest {
  String businessId;
  String phone;
  String? alternatePhone;
  String? gstin;
  Address? address;
  String username;
  String password;
  String? email;
  String? firstName;
  String? lastName;
  String? locale;
  String createdUserId;
  String role;

  CreateStoreEmployeeRequest(
      {required this.businessId,
        required this.phone,
        required this.username,
        required this.password,
        this.email,
        this.firstName,
        this.lastName,
        this.locale,
        this.alternatePhone,
        this.gstin,
        this.address,
        required this.createdUserId,
        required this.role});

  // CreateStoreEmployeeRequest.fromJson(Map<String, dynamic> json) {
  //   businessId = json['business_id'];
  //   phone = json['phone'];
  //   firstName = json['first_name'];
  //   lastName = json['last_name'];
  //   locale = json['locale'];
  //   createdUserId = json['created_user_id'];
  // }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['business_id'] = businessId;
    data['phone'] = phone;
    data['username'] = username;
    data['password'] = password;
    data['email'] = email;
    data['first_name'] = firstName;
    data['last_name'] = lastName;
    data['locale'] = locale;
    data['alternate_phone'] = alternatePhone;
    data['gstin'] = gstin;
    data['address'] = address?.toJson();
    data['created_user_id'] = createdUserId;
    data['role'] = role;
    return data;
  }
}

class UpdateEmployeeRequest {
  String? firstName;
  String? middleName;
  String? lastName;
  String? locale;
  String? email;
  String? gender;

  UpdateEmployeeRequest(
      {this.firstName,
        this.middleName,
        this.lastName,
        this.locale,
        this.email,
        this.gender});

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['first_name'] = firstName;
    data['middle_name'] = middleName;
    data['last_name'] = lastName;
    data['locale'] = locale;
    data['email'] = email;
    data['gender'] = gender;
    return data;
  }
}
