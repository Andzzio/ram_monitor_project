import 'package:flutter/material.dart';

class CustomTheme {
  CustomTheme();

  ThemeData getTheme() {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      scaffoldBackgroundColor: Color(0xFF161D2E),
    );
  }
}
