import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:money_record/config/common/app_common.dart';
import 'package:money_record/config/styles/theme.dart';

void main() {
  runApp(const MoneyRecordApp());
}

class MoneyRecordApp extends StatelessWidget {
  const MoneyRecordApp({super.key});

  @override
  Widget build(BuildContext context) {
    if (common.isIos()) {
      return GetCupertinoApp(
        theme: theme.iosLight(),
      );
    } else {
      return GetMaterialApp(
        theme: theme.light(),
      );
    }
  }
}
