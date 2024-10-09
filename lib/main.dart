import 'package:flutter/material.dart';

import 'cleaner_version_of_login_screen/cleaner_version_of_login_screen.dart';
import 'login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:
      //LoginScreen(),
      CleanerVersionOfLoginScreen(),
    );
  }
}
