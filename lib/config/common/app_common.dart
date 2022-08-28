// ignore_for_file: non_constant_identifier_names, unnecessary_new

import 'dart:io';
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:money_record/config/styles/layout_config.dart';

class AppCommon {
  String randomString(int length) {
    const chars =
        "AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890";

    Random random = Random();

    return String.fromCharCodes(
      Iterable.generate(
        length,
        (_) => chars.codeUnitAt(
          random.nextInt(chars.length),
        ),
      ),
    );
  }

  bool isIos() {
    return Platform.isIOS;
  }

  bool isAndroid() {
    return Platform.isAndroid;
  }

  bool isPortrait(Orientation orientation) {
    return orientation == Orientation.portrait;
  }

  bool isTablet() {
    return LayoutConfig.shortestSide > 600;
  }
}

AppCommon common = new AppCommon();
