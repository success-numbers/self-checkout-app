import 'package:isar/isar.dart';

@embedded
class LineItemTaxModifier {

  String? transSeq;
  int? lineItemSeq;

  String? authorityId;
  String? authorityName;
  String? authorityType;
  String? taxGroupId;
  String? taxRuleId;
  String? taxRuleName;
  String? taxLocationId;

  double? taxableAmount;
  double? taxAmount;
  double? taxPercent;
  double? originalTaxableAmount;
  double? rawTaxPercentage;
  double? rawTaxAmount;

  // Tax Exempt Parameter

  // Tax Override Parameter
  bool? taxOverride;
  double? taxOverrideAmount;
  double? taxOverridePercent;
  String? taxOverrideReasonCode;

  LineItemTaxModifier(
      {
        this.transSeq,
        this.lineItemSeq,
        this.authorityId,
        this.authorityName,
        this.authorityType,
        this.taxGroupId,
        this.taxRuleId,
        this.taxRuleName,
        this.taxLocationId,
        this.taxableAmount,
        this.taxAmount,
        this.taxPercent,
        this.originalTaxableAmount,
        this.rawTaxPercentage,
        this.rawTaxAmount,
        this.taxOverride = false,
        this.taxOverrideAmount,
        this.taxOverridePercent,
        this.taxOverrideReasonCode
      });

  LineItemTaxModifier.fromJson(Map<String, dynamic> json) {
    authorityId = json['authorityId'];
    authorityName = json['authorityName'];
    authorityType = json['authorityType'];
    lineItemSeq = json['lineItemSeq'];
    originalTaxableAmount = json['originalTaxableAmount'];
    rawTaxAmount = json['rawTaxAmount'];
    rawTaxPercentage = json['rawTaxPercentage'];
    taxableAmount = json['taxableAmount'];
    taxAmount = json['taxAmount'];
    taxGroupId = json['taxGroupId'];
    taxLocationId = json['taxLocationId'];
    taxOverride = json['taxOverride'];
    taxOverrideAmount = json['taxOverrideAmount'];
    taxOverridePercent = json['taxOverridePercent'];
    taxOverrideReasonCode = json['taxOverrideReasonCode'];
    taxPercent = json['taxPercent'];
    taxRuleId = json['taxRuleId'];
    taxRuleName = json['taxRuleName'];
    transSeq = json['transSeq'];
  }
}
