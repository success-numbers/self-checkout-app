import 'package:flutter/cupertino.dart';

import 'custom_translate.dart';

String multiTr(
  String key,
  Locale locale, {
  BuildContext? context,
  List<String>? args,
  Map<String, String>? namedArgs,
  String? gender,
}) {
  return MultiLocalization.instance
      .translate(key, locale: locale.toLanguageTag());
}
