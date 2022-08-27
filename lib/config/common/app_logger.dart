// ignore_for_file: unnecessary_new

import 'package:flutter/foundation.dart';
import 'package:logger/logger.dart';

class AppLogger {
  Logger log() {
    return Logger();
  }

  Logger? safeLog() {
    if (kDebugMode) {
      return Logger();
    } else {
      return null;
    }
  }
}

AppLogger logger = new AppLogger();
