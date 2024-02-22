import 'dart:convert';

import 'package:isar/isar.dart';
import 'package:logging/logging.dart';

import '../config/code_value.dart';
import '../entity/config/code_value_entity.dart';
import '../model/model.dart';
import '../database/db_provider.dart';
import '../entity/pos/entity.dart';
import '../util/helper/rest_api.dart';

class SettingsRepository with DatabaseProvider {
  final log = Logger('SettingsRepository');

  final RestApiClient restClient;

  SettingsRepository({required this.restClient});

  Future<ReceiptSettingsModel> updateReceiptSetting(
      ReceiptSettingsModel req) async {
    try {
      db.writeTxn(() async {
        if (req.storeNumber != null) {
          await db.settingEntitys.put(SettingEntity(
            category: SettingsCategory.receipt,
            subCategory: SettingsSubCategory.receiptPhoneNumber,
            value: req.storeNumber!,
          ));
        }

        if (req.tagLine != null) {
          await db.settingEntitys.put(SettingEntity(
            category: SettingsCategory.receipt,
            subCategory: SettingsSubCategory.receiptTagLine,
            value: req.tagLine!,
          ));
        }

        if (req.storeAddress != null) {
          await db.settingEntitys.put(SettingEntity(
            category: SettingsCategory.receipt,
            subCategory: SettingsSubCategory.receiptStoreAddress,
            value: req.storeAddress!,
          ));
        }

        if (req.footerTitle != null) {
          await db.settingEntitys.put(SettingEntity(
            category: SettingsCategory.receipt,
            subCategory: SettingsSubCategory.receiptFooterTitle,
            value: req.footerTitle!,
          ));
        }

        if (req.footerSubtitle != null) {
          await db.settingEntitys.put(SettingEntity(
            category: SettingsCategory.receipt,
            subCategory: SettingsSubCategory.receiptFooterSubTitle,
            value: req.footerSubtitle!,
          ));
        }
      });
    } catch (e) {
      log.severe(e);
    }
    return req;
  }

  Future<ReceiptSettingsModel> getReceiptSettings() async {
    List<SettingEntity> res = await db.settingEntitys
        .filter()
        .categoryEqualTo(SettingsCategory.receipt)
        .findAll();

    return ReceiptSettingsModel(
      storeNumber: res
          .firstWhere(
              (element) =>
                  SettingsSubCategory.receiptPhoneNumber == element.subCategory,
              orElse: () =>
                  SettingEntity(category: '', subCategory: '', value: ''))
          .value,
      storeAddress: res
          .firstWhere(
              (element) =>
                  SettingsSubCategory.receiptStoreAddress ==
                  element.subCategory,
              orElse: () =>
                  SettingEntity(category: '', subCategory: '', value: ''))
          .value,
      tagLine: res
          .firstWhere(
              (element) =>
                  SettingsSubCategory.receiptTagLine == element.subCategory,
              orElse: () =>
                  SettingEntity(category: '', subCategory: '', value: ''))
          .value,
      footerTitle: res
          .firstWhere(
              (element) =>
                  SettingsSubCategory.receiptFooterTitle == element.subCategory,
              orElse: () =>
                  SettingEntity(category: '', subCategory: '', value: ''))
          .value,
      footerSubtitle: res
          .firstWhere(
              (element) =>
                  SettingsSubCategory.receiptFooterSubTitle ==
                  element.subCategory,
              orElse: () =>
                  SettingEntity(category: '', subCategory: '', value: ''))
          .value,
    );
  }

  Future<void> setPrinterAddress(String name, String address, String kitchenTypes, String printerType) async {

    await db.writeTxn(() async {
      await db.settingEntitys.put(SettingEntity(
        category: SettingsCategory.printer,
        subCategory: name,
        value: '$address|$kitchenTypes|$printerType',
      ));
    });
  }

  Future<SettingEntity?> getDefaultReceiptPrinter() async {
    return await db.settingEntitys
        .where().categorySubCategoryEqualTo(SettingsCategory.printer, 'RECEIPT').findFirst();
  }

  Future<List<SettingEntity>> getPrinterByType(String type) async {
    List<SettingEntity> res = await db.settingEntitys
        .filter()
        .categoryEqualTo(SettingsCategory.printer)
        .findAll();

    return res.where((e) {
      return e.value.isNotEmpty && e.value.split("|").length == 3 && e.value.split("|")[2].toUpperCase() == type.toUpperCase();
    }).toList();
  }

  Future<void> deletePrinterAddress(String printerName) async {
    await db.writeTxn(() async {
      await db.settingEntitys.deleteByCategorySubCategory(SettingsCategory.printer, printerName);
      // get settings entity update sync date to null
      List<SettingEntity> res = await db.settingEntitys
          .filter()
          .categoryEqualTo(SettingsCategory.printer)
          .findAll();
      if (res.isNotEmpty) {
        List<SettingEntity> newData = res.map((e) => SettingEntity(category: e.category, subCategory: e.subCategory, value: e.value, id: e.id,)).toList();
        await db.settingEntitys.putAll(newData);
      }
    });
  }

  Future<List<SettingEntity>> getPrinterAddress() async {
    List<SettingEntity> res = await db.settingEntitys
        .filter()
        .categoryEqualTo(SettingsCategory.printer)
        .findAll();
    if (res.isEmpty) {
      return List.empty();
    }
    return res;
  }

  CodeValueEntity? getCodeByCategoryAndCode(String category, String? code) {
    if (code == null) return null;
    return db.codeValueEntitys.where().categoryCodeEqualTo(category, code).findFirstSync();
  }

  Future<List<CodeValueEntity>> getCodeByCategoryForStore(String category) async {
    try {
      var option = RestOptions(path: '/lov?storeId=$currentKey&valueType=$category');
      var rawResp = await restClient.get(restOptions: option);
      if (rawResp.statusCode == 200) {
        var decode = json.decode(rawResp.body) as List;
        List<LovResponse> lovResponse = decode.map((e) => LovResponse.fromJson(e)).toList();
        await db.writeTxn(() async {
          await db.codeValueEntitys.putAll(lovResponse.where((element) => element.id != null).map((e) => CodeValueEntity(
            category: category,
            code : e.id!,
            description: e.desc,
          )).toList());
        });
      }
    } catch (e) {
      log.severe(e);
    }
    return db.codeValueEntitys.where().categoryEqualTo(category).findAll();
  }

  List<CodeValueEntity> getCodeValueEntityByCodes(String category, List<String> codes) {
    return (db.codeValueEntitys.where().categoryEqualTo(category).findAllSync()).where((c) => codes.contains(c.code)).toList();
  }
}
