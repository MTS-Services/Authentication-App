import 'package:flutter/material.dart';
import 'package:login_and_register/utils/app_theme.dart';

import 'views/screens/toggle_button.dart';

void main() {
  AppBarThemes.setSystemUIOverlayStyle();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: Colors.white),
      home: ToggleButtonScreen(),
    );
  }
}
