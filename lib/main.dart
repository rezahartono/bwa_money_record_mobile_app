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
        theme: Get.isDarkMode ? theme.iosDark() : theme.iosLight(),
        debugShowCheckedModeBanner: false,
      );
    } else {
      return GetMaterialApp(
        theme: theme.light(),
        darkTheme: theme.dark(),
        debugShowCheckedModeBanner: false,
      );
    }
  }
}
