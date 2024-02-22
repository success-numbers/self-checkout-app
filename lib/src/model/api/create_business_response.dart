import '../../entity/pos/business_entity.dart';

class CreateBusinessResponse {
  String? type;
  int? businessId;
  String? name;
  String? legalName;
  String? email;
  String? address1;
  String? address2;
  String? city;
  String? state;
  String? postalCode;
  String? country;
  String? currency;
  String? phone;
  String? locale;
  String? createdBy;
  DateTime? createdAt;
  String? storeOpenTime;
  String? storeOperatingHours;
  CustomAttribute? customAttribute;
  Logo? logo;
  List<String>? config;
  List<TenderModel>? details;
  List<DiscountCouponModel>? discount;

  CreateBusinessResponse(
      {this.type,
      this.businessId,
      this.name,
      this.legalName,
      this.email,
      this.address1,
      this.address2,
      this.city,
      this.state,
      this.postalCode,
      this.country,
      this.currency,
      this.phone,
      this.locale,
      this.createdBy,
      this.createdAt,
      this.storeOpenTime,
      this.storeOperatingHours,
      this.customAttribute,
      this.logo,
      this.config,
      this.details,
      this.discount});

  CreateBusinessResponse.fromJson(Map<String, dynamic> json) {
    type = json['Type'];
    businessId = json['business_id'];
    name = json['name'];
    legalName = json['legal_name'];
    email = json['email'];
    address1 = json['address1'];
    address2 = json['address2'];
    city = json['city'];
    state = json['state'];
    postalCode = json['postal_code'];
    country = json['country'];
    currency = json['currency'];
    phone = json['phone'];
    locale = json['locale'];
    storeOpenTime = json['store_open_time'];
    storeOperatingHours = json['store_operating_hours'];
    createdBy = json['created_by'];
    createdAt =
        DateTime.tryParse(json['created_at'].toString()) ?? DateTime.now();
    customAttribute = json['custom_attribute'] != null
        ? CustomAttribute.fromJson(json['custom_attribute'])
        : null;
    logo = json['logo'] != null ? Logo.fromJson(json['logo']) : null;
    config = json['config'] != null ? List<String>.from(json['config']) : [];
    if (json['details'] != null) {
      details = <TenderModel>[];
      json['details'].forEach((v) {
        details!.add(new TenderModel.fromJson(v));
      });
    }
    if (json['discount'] != null) {
      discount = <DiscountCouponModel>[];
      json['discount'].forEach((v) {
        discount!.add(new DiscountCouponModel.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Type'] = type;
    data['business_id'] = businessId;
    data['name'] = name;
    data['legal_name'] = legalName;
    data['email'] = email;
    data['address1'] = address1;
    data['address2'] = address2;
    data['city'] = city;
    data['state'] = state;
    data['postal_code'] = postalCode;
    data['country'] = country;
    data['currency'] = currency;
    data['phone'] = phone;
    data['locale'] = locale;
    data['store_open_time'] = storeOpenTime;
    data['store_operating_hours'] = storeOperatingHours;
    data['created_by'] = createdBy;
    data['created_at'] = createdAt;
    if (customAttribute != null) {
      data['custom_attribute'] = customAttribute!.toJson();
    }
    if (logo != null) {
      data['logo'] = logo!.toJson();
    }
    data['config'] = config;
    if (this.details != null) {
      data['details'] = this.details!.map((v) => v.toJson()).toList();
    }
    if (this.discount != null) {
      data['discount'] = this.discount!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class CustomAttribute {
  String? gST;
  String? pAN;

  CustomAttribute({this.gST, this.pAN});

  CustomAttribute.fromJson(Map<String, dynamic> json) {
    gST = json['GST'];
    pAN = json['PAN'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['GST'] = gST;
    data['PAN'] = pAN;
    return data;
  }
}

class Logo {
  String? large;
  String? medium;
  String? small;

  Logo({this.large, this.medium, this.small});

  Logo.fromJson(Map<String, dynamic> json) {
    large = json['large'];
    medium = json['medium'];
    small = json['small'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['large'] = large;
    data['medium'] = medium;
    data['small'] = small;
    return data;
  }
}
