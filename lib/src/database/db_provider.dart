import 'dart:collection';
import 'dart:io';

import 'package:isar/isar.dart';
import 'package:logging/logging.dart';
import 'package:path_provider/path_provider.dart';
import 'package:selfcheckout/src/entity/pos/business_entity.dart';
import 'package:selfcheckout/src/entity/pos/category_entity.dart';
import 'package:selfcheckout/src/entity/pos/country_entity.dart';
import 'package:selfcheckout/src/entity/pos/employee_entity.dart';

mixin DatabaseProvider {
  static final log = Logger('DatabaseProvider');
  static const defaultDbName = 'default';
  static final Map<String, Isar> _dbMap = HashMap<String, Isar>();
  static String _currentKey = defaultDbName;
  static bool _isIsolated = false;
  static String path = "";

  Isar get db => _dbMap[_currentKey]!;

  Isar get defaultInstance => _dbMap[defaultDbName]!;

  String get currentKey => _currentKey;

  static Future<void> ensureInitialized({String name = defaultDbName, bool isolateInit = false, String? rawPath}) async {
    _isIsolated = isolateInit;
    if (rawPath != null) {
      path = rawPath;
    } else
    if (path.isEmpty) {
      path = (await getApplicationDocumentsDirectory()).path;
      path = '$path/.mpos';
      final checkPathExistence = await Directory(path).exists();
      if (!checkPathExistence) {
        Directory(path).createSync(recursive: true);
      }
    }
    await switchDatabase(name);
  }

  static Future<Isar> _openDatabase(String name) async {
    bool inspector = false;
    log.info("Creating new database connection at $path");

    if (!_isIsolated) {
      inspector = true;
    }

    return await Isar.open([
      CategoryEntitySchema,
      CountryEntitySchema,
      RetailLocationEntitySchema,
      EmployeeEntitySchema

    ], inspector: inspector, directory: path, name: name, maxSizeMiB: 2048);
  }

  static Future<void> switchDatabase(String name) async {
    log.info("Switching database to $name");
    if (_dbMap.containsKey(name)) {
      _currentKey = name;
    } else {
      _dbMap[name] = await _openDatabase(name);
      _currentKey = name;
    }
  }

  static Future<void> closeAllDatabaseExceptDefault() async {
    log.info("Closing all database except default");
    List<String> keys = _dbMap.keys.toList();
    for (var key in keys) {
      if (key != defaultDbName) {
        await _dbMap[key]!.close(deleteFromDisk: true);
        _dbMap.remove(key);
      }
    }
  }
}
