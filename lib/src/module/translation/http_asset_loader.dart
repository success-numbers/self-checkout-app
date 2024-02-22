import 'dart:convert';
import 'dart:developer';
import 'dart:ui';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;

import '../../config/constants.dart';


class HttpAssetLoader extends AssetLoader {

  String getLocalePath(String basePath, Locale locale) {
    return '$basePath/${locale.toStringWithSeparator(separator: "-")}.json';
  }

  @override
  Future<Map<String, dynamic>> load(String path, Locale locale) async {
    log('easy localization loader: load http $path');
    Map<String, dynamic> localData = {};
    Map<String, dynamic> httpData = {};

    try {
      // load your json file from local
      var localePath = getLocalePath(path, locale);
      EasyLocalization.logger.debug('Load asset from $path');

      localData = await json.decode(await rootBundle.loadString(localePath));
    } catch (e) {
      //Catch network exceptions
      EasyLocalization.logger.debug('Load asset from $path');
    }


    try {
      var url = Uri.parse('${Constants.translationUrl}/${locale.toStringWithSeparator(separator: "-")}.json');
      httpData = await http
          .get(url)
          .then((response) => json.decode(utf8.decode(response.bodyBytes)));
      EasyLocalization.logger.debug('Load asset from $path');
    } catch (e) {
      EasyLocalization.logger.error(e);
      //Catch network exceptions
    }

    return {...localData, ...httpData};
  }
}