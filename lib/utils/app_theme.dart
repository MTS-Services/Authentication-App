import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppBarThemes {
  static void setSystemUIOverlayStyle() {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.white,
        statusBarIconBrightness: Brightness.dark,
      ),
    );
  }
}
