import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'graphmodels.dart';

class GraphHelpers {

  static int getDuration(String frame, int x1, int x2) {
    return frame == "second"
        ? (DateTime.fromMillisecondsSinceEpoch(x1)
            .difference(DateTime.fromMillisecondsSinceEpoch(x2))
            .inSeconds)
        : frame == "minute"
            ? (DateTime.fromMillisecondsSinceEpoch(x1)
                .difference(DateTime.fromMillisecondsSinceEpoch(x2))
                .inMinutes)
            : frame == "hour"
                ? (DateTime.fromMillisecondsSinceEpoch(x1)
                    .difference(DateTime.fromMillisecondsSinceEpoch(x2))
                    .inHours)
                : (DateTime.fromMillisecondsSinceEpoch(x1)
                    .difference(DateTime.fromMillisecondsSinceEpoch(x2))
                    .inDays);
  }

  static String numberFormatter(double v) {
    if (v == null) return '';
    NumberFormat formatter = NumberFormat();
    formatter.minimumFractionDigits = 0;
    formatter.maximumFractionDigits = 2;
    return formatter.format(v);
  }

  static String numberFormatterRoundOnly(double v) {
    if (v == null || v != v.roundToDouble()) return '';
    NumberFormat formatter = NumberFormat();
    formatter.minimumFractionDigits = 0;
    formatter.maximumFractionDigits = 2;
    return formatter.format(v);
  }

  static String unixToDate(double unixValue, String format) {
    return DateFormat(format)
        .format(DateTime.fromMillisecondsSinceEpoch(unixValue.toInt()));
  }

}
