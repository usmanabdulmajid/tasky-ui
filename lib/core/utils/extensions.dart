import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:test_app/core/utils/enums.dart';

extension DateTimeHelper on DateTime {
  String get toDay => '$day';

  String get toMonth => Month.values[month - 1].name.toUpperCase();

  String get toYear => '$year';

  String get toTime {
    final tod = TimeOfDay(hour: hour, minute: minute);
    final dateTime = DateTime(year, month, day, tod.hour, tod.minute);
    final format = DateFormat.jm();
    final time = format.format(dateTime).toLowerCase();
    return time;
  }
}
