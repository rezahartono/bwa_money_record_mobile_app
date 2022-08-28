import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:money_record/config/common/app_common.dart';
import 'package:money_record/config/common/session_util.dart';
import 'package:money_record/config/constants/string_constant.dart';
import 'package:money_record/config/styles/layout_config.dart';
import 'package:money_record/config/styles/theme.dart';
import 'package:money_record/presentation/pages/android/a_home_page.dart';
import 'package:money_record/presentation/pages/android/a_sign_in_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  initializeDateFormatting(constant.locale).then(
    (value) => runApp(
      const MoneyRecordApp(),
    ),
  );
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
        home: FutureBuilder(
          future: session.isActive(),
          builder: ((context, AsyncSnapshot<bool> snapshot) {
            layoutConfig.init(context);
            if (snapshot.hasData && snapshot.data!) {
              return const AHomePage();
            } else {
              return const ASignInPage();
            }
          }),
        ),
      );
    }
  }
}
