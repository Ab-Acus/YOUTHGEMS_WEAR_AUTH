import 'package:flutter/material.dart';
import 'package:youthgems_wear_auth/authentication_page.dart';
import 'package:youthgems_wear_auth/themes/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'YouthGEMs Wear Auth',
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: ThemeMode.system,
      home: const AuthenticationPage(),
    );
  }
}

