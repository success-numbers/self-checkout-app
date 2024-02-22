import 'package:isar/isar.dart';
import 'address.dart';

part 'business_entity.g.dart';

@Collection()
class RetailLocationEntity {
  final Id rtlLocId;
  final String? storeName;
  final String? legalBusiness;
  final String? storeEmail;
  final String? storeContact;
  final String? storeNumber;
  final String? currencyId;
  final String? locale;
  final Address? address;
  final String? gst;
  final String? pan;
  final List<String>? logo;
  late DateTime createTime;
  late DateTime? updateTime;
  final String? storeOpenTime;
  final String? storeOperatingHours;
  late DateTime? lastChangedAt;
  late int version;

  Register? register;

  final List<String> config;
  final List<TenderModel> tenderDetails;
  final List<DiscountCouponModel> discountCoupons;
  final List<CustomerType> customerTypes;

  RetailLocationEntity(
      {required this.rtlLocId,
      this.storeName,
      this.legalBusiness,
      this.storeEmail,
      this.storeContact,
      this.storeNumber,
      this.currencyId,
      this.locale,
      this.address,
      this.gst,
      this.pan,
      this.logo,
      required this.createTime,
      this.version = 1,
      this.lastChangedAt,
      this.updateTime,
      this.register,
      this.tenderDetails = const [],
      this.storeOpenTime,
      this.storeOperatingHours,
      this.config = const [],
      this.discountCoupons = const [],
      this.customerTypes = const []});

  RetailLocationEntity copyWith(
      {Id? rtlLocId,
      String? storeName,
      String? legalBusiness,
      String? storeEmail,
      String? storeContact,
      String? storeNumber,
      String? currencyId,
      String? locale,
      Address? address,
      String? gst,
      String? pan,
      List<String>? logo,
      DateTime? createTime,
      int? version,
      DateTime? lastChangedAt,
      DateTime? updateTime,
      Register? register,
      List<String>? config,
      List<TenderModel>? tenderDetails,
      List<DiscountCouponModel>? discountCoupons,
      List<CustomerType>? customerTypes}) {
    return RetailLocationEntity(
        rtlLocId: rtlLocId ?? this.rtlLocId,
        storeName: storeName ?? this.storeName,
        legalBusiness: legalBusiness ?? this.legalBusiness,
        storeEmail: storeEmail ?? this.storeEmail,
        storeContact: storeContact ?? this.storeContact,
        storeNumber: storeNumber ?? this.storeNumber,
        currencyId: currencyId ?? this.currencyId,
        locale: locale ?? this.locale,
        address: address ?? this.address,
        gst: gst ?? this.gst,
        pan: pan ?? this.pan,
        logo: logo ?? this.logo,
        createTime: createTime ?? this.createTime,
        version: version ?? this.version,
        lastChangedAt: lastChangedAt ?? this.lastChangedAt,
        updateTime: updateTime ?? this.updateTime,
        register: register ?? this.register,
        config: config ?? this.config,
        tenderDetails: tenderDetails ?? this.tenderDetails,
        discountCoupons: discountCoupons ?? this.discountCoupons,
        customerTypes: customerTypes ?? this.customerTypes);
  }
}

@Embedded()
class Register {
  String? deviceId;
  String? storeId;
  String? employeeId;
  int? registerId;
  String? status;

  Register(
      {this.deviceId,
      this.storeId,
      this.employeeId,
      this.registerId,
      this.status});
}

@Embedded()
class TenderModel {
  String? tenderId;
  String? name;
  int? sortOrder;
  String? group;

  TenderModel({this.tenderId, this.name, this.sortOrder, this.group});

  TenderModel.fromJson(Map<String, dynamic> json) {
    tenderId = json['tender_id'];
    name = json['name'];
    sortOrder = json['sort_order'];
    group = json['group'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['tender_id'] = this.tenderId;
    data['name'] = this.name;
    data['sort_order'] = this.sortOrder;
    data['group'] = this.group;
    return data;
  }
}
@Embedded()
class CustomerType {
  String? id;
  String? desc;

  CustomerType({this.id, this.desc});

  CustomerType.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    desc = json['desc'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['desc'] = desc;
    return data;
  }
}

@Embedded()
class DiscountCouponModel {
  String? discountId;
  String? discountPercentage;

  DiscountCouponModel({this.discountId, this.discountPercentage});

  DiscountCouponModel.fromJson(Map<String, dynamic> json) {
    discountId = json['discount_id'];
    discountPercentage = json['discount_percentage'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['discount_id'] = this.discountId;
    data['discount_percentage'] = this.discountPercentage;
    return data;
  }
}
