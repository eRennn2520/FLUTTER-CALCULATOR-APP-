import 'package:calculator_app/widgets/theme.dart';
import 'package:flutter/material.dart';
import 'splash/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Calculator App',
     theme: LightTheme, // Aydınlık tema
      darkTheme: darkTheme, // Karanlık tema
      themeMode: ThemeMode.system, // Kullanıcının sistem ayarlarına göre tema
      home: SplashScreen(),
    );
  }
}
