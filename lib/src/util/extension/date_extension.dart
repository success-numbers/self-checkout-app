import 'package:intl/intl.dart';

extension DateTimeFormatter on DateTime {
  String toCustomDefaultFormatDay() => DateFormat("MMM dd yyyy").format(this);
  String toCustomDefaultFormatDateTime() => DateFormat("yyyy-MMM-ddTHH:mm:ss").format(this);
  DateTime toEndOfDay() =>
      DateTime(this.year, this.month, this.day, 23, 59, 59, 0, 0);
  DateTime toStartOfDay() =>
      DateTime(this.year, this.month, this.day, 00, 00, 00, 0, 0);
  DateTime toStartOfYear(int subtractYearsFromCurrent) =>
      DateTime(this.year - subtractYearsFromCurrent);
  DateTime toStartOfMonth(int subtractMonthsFromCurrent) =>
      DateTime(this.year, this.month - subtractMonthsFromCurrent);
}
