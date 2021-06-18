import 'package:calculadora/core/app_settings.dart';
import 'package:calculadora/core/custom_theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void _nextScreen() {
    Navigator.pushReplacementNamed(context, '/home');
  }

  @override
  void initState() {
    Future.delayed(Duration(seconds: 5), () => _nextScreen());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      extendBodyBehindAppBar: true,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: context.watch<AppSettings>().lightTheme
              ? CustomTheme.scaffoldBackgroundLight
              : CustomTheme.scaffoldBackgroundDark,
        ),
        child: Center(
          child: Icon(
            Icons.calculate_outlined,
            size: 100.0,
          ),
        ),
      ),
    );
  }
}
