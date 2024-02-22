import 'dart:convert';
import 'dart:io';

import 'package:isar/isar.dart';
import 'package:logging/logging.dart';

import '../database/db_provider.dart';
import '../entity/pos/entity.dart';
import '../entity/pos/tax_group_entity.dart';
import '../util/helper/rest_api.dart';

class BulkImportRepository with DatabaseProvider {
  final log = Logger('BulkImportRepository');

  final RestApiClient restClient;

  BulkImportRepository({required this.restClient});

  Future<void> importTaxData(String filePath) async {
    try {
      final input = await File(filePath).readAsBytes();
      await db.writeTxn(() async {
        await db.taxGroupEntitys.importJsonRaw(input);
      });
    } catch (e) {
      log.severe(e);
    }
  }

  Future<void> importCategoryData(String filePath) async {
    try {
      final input = await File(filePath).readAsBytes();
      await db.writeTxn(() async {
        await db.categoryEntitys.importJsonRaw(input);
      });
    } catch (e) {
      log.severe(e);
    }
  }

  Future<void> importProductData(String filePath) async {
    try {
      final input = await File(filePath).readAsBytes();
      await db.writeTxn(() async {
        await db.itemEntitys.importJsonRaw(input);
      });
    } catch (e) {
      log.severe(e);
    }
  }
}

class BulkExportRepository with DatabaseProvider {
  final log = Logger('BulkImportRepository');

  final RestApiClient restClient;

  BulkExportRepository({required this.restClient});

  Future<void> exportTax(String filePath) async {
    try {
      final taxGroupEntitys = await db.taxGroupEntitys.where().exportJson();
      // Create a new file and write to it
      var file = await File('$filePath/tax-${DateTime.now().toIso8601String()}.json').create();
      await file.writeAsBytes(utf8.encode(json.encode(taxGroupEntitys)));
      log.info('Exported tax data to $filePath');
    } catch (e) {
      log.severe(e);
    }
  }

  Future<void> exportProducts(String filePath) async {
    try {
      final itemEntitys = await db.itemEntitys.where().exportJson();
      // Create a new file and write to it
      var file = await File('$filePath/products-${DateTime.now().toIso8601String()}.json').create();
      await file.writeAsBytes(utf8.encode(json.encode(itemEntitys)));
      log.info('Exported products data to $filePath');
    } catch (e) {
      log.severe(e);
    }
  }

  // Export category data
  Future<void> exportCategory(String filePath) async {
    try {
      final categoryEntitys = await db.categoryEntitys.where().exportJson();
      // Create a new file and write to it
      var file = await File('$filePath/category-${DateTime.now().toIso8601String()}.json').create();
      await file.writeAsBytes(utf8.encode(json.encode(categoryEntitys)));
      log.info('Exported category data to $filePath');
    } catch (e) {
      log.severe(e);
    }
  }
}