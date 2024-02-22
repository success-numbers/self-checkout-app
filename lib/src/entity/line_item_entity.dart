import 'package:isar/isar.dart';

import 'line_item_modifier.dart';
import 'line_item_tax.dart';

class LineItemEntity {
  List<TransactionAdditionalLineItemModifier>? additionalModifier;
  String? addProperty;
  double? baseUnitPrice;
  int? businessDate;
  String? category;
  String? currency;
  double? discountAmount;
  double? extendedAmount;
  double? grossAmount;
  String? groupId;
  String? hsn;
  bool? isPriceSet;
  bool? isVoid;
  String? itemColor;
  String? itemDescription;
  String? itemId;
  String? itemIdEntryMethod;
  String? itemSize;
  String? itemThumbnail;
  int? lineItemSeq;
  List<LineItemModifierEntity>? lineModifiers;
  double? netAmount;
  bool? nonExchangeableFlag;
  bool? nonReturnableFlag;
  String? originalBusinessDate;
  int? originalLineItemSeq;
  int? originalPosId;
  String? originalTransSeq;
  int? posId;
  String? priceEntryMethod;
  bool? priceOverride;
  double? priceOverrideAmount;
  String? priceOverrideReason;
  int? quantity;
  String? returnComment;
  double? returnedQuantity;
  bool? returnFlag;
  String? returnReasonCode;
  String? returnTypeCode;
  String? serialNumber;
  double? shippingWeight;
  String? status;
  int? storeId;
  double? taxAmount;
  List<LineItemTaxModifier>? taxModifiers;
  double? totalBasePrice;
  double? totalBaseUnitPrice;
  String? transSeq;
  double? unitCost;
  double? unitPrice;
  String? uom;
  String? vendorId;

  LineItemEntity(
      {this.additionalModifier,
        this.addProperty,
        this.baseUnitPrice,
        this.businessDate,
        this.category,
        this.currency,
        this.discountAmount,
        this.extendedAmount,
        this.grossAmount,
        this.groupId,
        this.hsn,
        this.isPriceSet,
        this.isVoid,
        this.itemColor,
        this.itemDescription,
        this.itemId,
        this.itemIdEntryMethod,
        this.itemSize,
        this.itemThumbnail,
        this.lineItemSeq,
        this.lineModifiers,
        this.netAmount,
        this.nonExchangeableFlag,
        this.nonReturnableFlag,
        this.originalBusinessDate,
        this.originalLineItemSeq,
        this.originalPosId,
        this.originalTransSeq,
        this.posId,
        this.priceEntryMethod,
        this.priceOverride,
        this.priceOverrideAmount,
        this.priceOverrideReason,
        this.quantity,
        this.returnComment,
        this.returnedQuantity,
        this.returnFlag,
        this.returnReasonCode,
        this.returnTypeCode,
        this.serialNumber,
        this.shippingWeight,
        this.status,
        this.storeId,
        this.taxAmount,
        this.taxModifiers,
        this.totalBasePrice,
        this.totalBaseUnitPrice,
        this.transSeq,
        this.unitCost,
        this.unitPrice,
        this.uom,
        this.vendorId});

  LineItemEntity.fromJson(Map<String, dynamic> json) {
    if (json['additionalModifier'] != null) {
      additionalModifier = [];
      /*json['additionalModifier'].forEach((v) {
        additionalModifier!.add(new .fromJson(v));
      });*/
    }
    addProperty = json['addProperty'];
    baseUnitPrice = json['baseUnitPrice'];
    businessDate = json['businessDate'];
    category = json['category'];
    currency = json['currency'];
    discountAmount = json['discountAmount'].toDouble();
    extendedAmount = json['extendedAmount'].toDouble();
    grossAmount = json['grossAmount'].toDouble();
    groupId = json['groupId'];
    hsn = json['hsn'];
    isPriceSet = json['isPriceSet'];
    isVoid = json['isVoid'];
    itemColor = json['itemColor'];
    itemDescription = json['itemDescription'];
    itemId = json['itemId'];
    itemIdEntryMethod = json['itemIdEntryMethod'];
    itemSize = json['itemSize'];
    itemThumbnail = json['itemThumbnail'];
    lineItemSeq = json['lineItemSeq'];
    if (json['lineModifiers'] != null) {
      lineModifiers = <LineItemModifierEntity>[];
      /*json['lineModifiers'].forEach((v) {
        lineModifiers!.add(LineItemModifierEntity.fromJson(v));
      });*/
    }
    netAmount = json['netAmount'].toDouble();
    nonExchangeableFlag = json['nonExchangeableFlag'];
    nonReturnableFlag = json['nonReturnableFlag'];
    originalBusinessDate = json['originalBusinessDate'];
    originalLineItemSeq = json['originalLineItemSeq'];
    originalPosId = json['originalPosId'];
    originalTransSeq = json['originalTransSeq'];
    posId = json['posId'];
    priceEntryMethod = json['priceEntryMethod'];
    priceOverride = json['priceOverride'];
    priceOverrideAmount = json['priceOverrideAmount'];
    priceOverrideReason = json['priceOverrideReason'];
    quantity = json['quantity'];
    returnComment = json['returnComment'];
    returnedQuantity = json['returnedQuantity'];
    returnFlag = json['returnFlag'];
    returnReasonCode = json['returnReasonCode'];
    returnTypeCode = json['returnTypeCode'];
    serialNumber = json['serialNumber'];
    shippingWeight = json['shippingWeight'];
    status = json['status'];
    storeId = json['storeId'];
    taxAmount = json['taxAmount'].toDouble();
    if (json['taxModifiers'] != null) {
      taxModifiers = <LineItemTaxModifier>[];
      /*json['taxModifiers'].forEach((v) {
        taxModifiers!.add(LineItemTaxModifier.fromJson(v));
      });*/
    }
    totalBasePrice = json['totalBasePrice'];
    totalBaseUnitPrice = json['totalBaseUnitPrice'];
    transSeq = json['transSeq'];
    unitCost = json['unitCost'];
    unitPrice = json['unitPrice'];
    uom = json['uom'];
    vendorId = json['vendorId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    /*if (additionalModifier != null) {
      data['additionalModifier'] =
          additionalModifier!.map((v) => v.toJson()).toList();
    }*/
    data['additionalModifier'] = [];
    data['addProperty'] = addProperty;
    data['baseUnitPrice'] = baseUnitPrice;
    data['businessDate'] = businessDate;
    data['category'] = category;
    data['currency'] = currency;
    data['discountAmount'] = discountAmount;
    data['extendedAmount'] = extendedAmount;
    data['grossAmount'] = grossAmount;
    data['groupId'] = groupId;
    data['hsn'] = hsn;
    data['isPriceSet'] = isPriceSet;
    data['isVoid'] = isVoid;
    data['itemColor'] = itemColor;
    data['itemDescription'] = itemDescription;
    data['itemId'] = itemId;
    data['itemIdEntryMethod'] = itemIdEntryMethod;
    data['itemSize'] = itemSize;
    data['itemThumbnail'] = itemThumbnail;
    data['lineItemSeq'] = lineItemSeq;
    /*if (lineModifiers != null) {
      data['lineModifiers'] =
          lineModifiers!.map((v) => v.toJson()).toList();
    }*/
    data['lineModifiers'] = [];
    data['netAmount'] = netAmount;
    data['nonExchangeableFlag'] = nonExchangeableFlag;
    data['nonReturnableFlag'] = nonReturnableFlag;
    data['originalBusinessDate'] = originalBusinessDate;
    data['originalLineItemSeq'] = originalLineItemSeq;
    data['originalPosId'] = originalPosId;
    data['originalTransSeq'] = originalTransSeq;
    data['posId'] = posId;
    data['priceEntryMethod'] = priceEntryMethod;
    data['priceOverride'] = priceOverride;
    data['priceOverrideAmount'] = priceOverrideAmount;
    data['priceOverrideReason'] = priceOverrideReason;
    data['quantity'] = quantity;
    data['returnComment'] = returnComment;
    data['returnedQuantity'] = returnedQuantity;
    data['returnFlag'] = returnFlag;
    data['returnReasonCode'] = returnReasonCode;
    data['returnTypeCode'] = returnTypeCode;
    data['serialNumber'] = serialNumber;
    data['shippingWeight'] = shippingWeight;
    data['status'] = status;
    data['storeId'] = storeId;
    data['taxAmount'] = taxAmount;
    /*if (taxModifiers != null) {
      data['taxModifiers'] = taxModifiers!.map((v) => v.toJson()).toList();
    }*/
    data['taxModifiers'] = [];
    data['totalBasePrice'] = totalBasePrice;
    data['totalBaseUnitPrice'] = totalBaseUnitPrice;
    data['transSeq'] = transSeq;
    data['unitCost'] = unitCost;
    data['unitPrice'] = unitPrice;
    data['uom'] = uom;
    data['vendorId'] = vendorId;
    return data;
  }
}

class ItemIdEntryMethod extends EntryMethod {}

class EntryMethod {
  static const keyboard = "KEYBOARD";
}

@embedded
class TransactionAdditionalLineItemModifier {
  String? uuid;
  String? name;
  double? price;
  double? quantity;

  TransactionAdditionalLineItemModifier({
    this.uuid,
    this.name,
    this.price,
    this.quantity,
  });
}
