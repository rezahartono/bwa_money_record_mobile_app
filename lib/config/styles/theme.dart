// ignore_for_file: non_constant_identifier_names, unnecessary_new

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:money_record/config/styles/layout_config.dart';
import 'package:google_fonts/google_fonts.dart';

part 'color.dart';
part 'font_style.dart';
part 'font_weight.dart';
part 'font_size.dart';
part 'text_style.dart';
part 'box_shadow.dart';

class AppTheme {
  ThemeData dark() {
    return ThemeData(
      brightness: Brightness.dark,
      primaryColor: Colors.amber,
    );
  }

  ThemeData light() {
    return ThemeData(
      brightness: Brightness.light,
      primaryColor: Colors.blue,
    );
  }

  CupertinoThemeData iosDark() {
    return const CupertinoThemeData(
      brightness: Brightness.dark,
      primaryColor: Colors.amber,
    );
  }

  CupertinoThemeData iosLight() {
    return const CupertinoThemeData(
      brightness: Brightness.light,
      primaryColor: Colors.blue,
    );
  }
}

AppTheme theme = new AppTheme();
