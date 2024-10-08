import 'dart:async';
import 'package:calculator_app/screens/calculator_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    Timer(
      const Duration(seconds: 4),
      () => Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (BuildContext context) => CalculatorScreen())),
    );

    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Image.asset("lib/assets/logo.png"),
        ),
      ),
    );
  }
}
