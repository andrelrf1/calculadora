import 'package:calculadora/core/app_settings.dart';
import 'package:calculadora/core/custom_theme.dart';
import 'package:calculadora/screens/history/history_screen.dart';
import 'package:calculadora/screens/home/home_screen.dart';
import 'package:calculadora/screens/splash/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (context) => AppSettings(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: CustomTheme.lightTheme,
        routes: {
          '/': (context) => SplashScreen(),
          '/home': (context) => HomeScreen(),
        },
        initialRoute: '/',
      ),
    );
  }
}
