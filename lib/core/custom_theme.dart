import 'package:flutter/material.dart';

class CustomTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      brightness: Brightness.light,
      primaryColor: Color(0xffFF3A3A),
    );
  }

  static ThemeData get darkTheme {
    return ThemeData(
      brightness: Brightness.dark,
      primaryColor: Color(0xffFF5454),
    );
  }

  static LinearGradient get scaffoldBackgroundLight {
    return LinearGradient(
      colors: [
        Color(0xffDEDEDE),
        Color(0xffD2D2D2),
      ],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    );
  }

  static LinearGradient get scaffoldBackgroundDark {
    return LinearGradient(
      colors: [
        Color(0xff2E2E2E),
        Color(0xff242424),
      ],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    );
  }
}

class ChangeTheme with ChangeNotifier {
  static bool _isLight = true;

  ThemeMode currentTheme() {
    return _isLight ? ThemeMode.light : ThemeMode.dark;
  }

  void switchTheme() {
    _isLight = !_isLight;
    notifyListeners();
  }
}