import 'package:flutter/material.dart';

import 'public.dart' as ez;

extension MulliLocaleStringTranslator on String {
  String multiTr({
    required Locale locale,
    BuildContext? context,
    List<String>? args,
    Map<String, String>? namedArgs,
    String? gender,
  }) {

    // if (isEmpty || !startsWith("_")) {
    //   return this;
    // }

    return ez.multiTr(
      this,
      locale,
      context: context,
      gender: gender,
      args: args,
      namedArgs: namedArgs,
    );
  }
}
