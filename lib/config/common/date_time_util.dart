// ignore_for_file: unnecessary_new

import 'package:intl/intl.dart';

class DateTimeUtil {
  String getDate({
    required String date,
    required DateFormat format,
  }) {
    DateTime newDate = DateTime.parse(date);

    return format.format(newDate);
  }

  String now({
    required DateFormat format,
  }) {
    DateTime date = DateTime.now();

    return format.format(date);
  }
}

DateTimeUtil dateTimeUtil = new DateTimeUtil();
