import 'package:flutter/material.dart';

final ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  primaryColor: Colors.pinkAccent,
  scaffoldBackgroundColor: Colors.black,
  cardColor: const Color(0xFF1E1E1E),
  canvasColor: Colors.grey,
  appBarTheme: const AppBarTheme(
    surfaceTintColor: Colors.black,
    backgroundColor: Colors.black, // AppBar arka plan rengi
    titleTextStyle: TextStyle(
        color: Colors.white, fontSize: 20, fontWeight: FontWeight.w500),
  ),
  buttonTheme: const ButtonThemeData(
    buttonColor: Colors.pinkAccent,
    textTheme: ButtonTextTheme.primary,
  ),
  textTheme: const TextTheme(
    bodyLarge: TextStyle(color: Colors.white),
    bodyMedium: TextStyle(color: Colors.white),
    displayLarge: TextStyle(
        color: Colors.white, fontSize: 48, fontWeight: FontWeight.bold),
  ),
);

final ThemeData LightTheme = ThemeData(
  brightness: Brightness.light,
  primaryColor: Colors.white,
  scaffoldBackgroundColor: Colors.white,
  cardColor: Colors.grey[200],
  canvasColor: Colors.white,
  appBarTheme: const AppBarTheme(
    surfaceTintColor: Colors.white,
    backgroundColor: Colors.white, // AppBar arka plan rengi
    titleTextStyle: TextStyle(
        color: Colors.black, fontSize: 20, fontWeight: FontWeight.w500),
  ),
  buttonTheme: const ButtonThemeData(
    buttonColor: Colors.pinkAccent,
    textTheme: ButtonTextTheme.primary,
  ),
  textTheme: const TextTheme(
    bodyLarge: TextStyle(color: Colors.black),
    bodyMedium: TextStyle(color: Colors.black),
    displayLarge: TextStyle(
        color: Colors.black, fontSize: 48, fontWeight: FontWeight.bold),
  ),
);
