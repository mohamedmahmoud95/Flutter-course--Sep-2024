import 'package:flutter/material.dart';
import 'package:local_database/share_preferences/share_preferences_example.dart';

import 'flutter_secure_storage/flutter_secure_storage_example.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:
      //SharedPreferencesExample(),
      FlutterSecureStorageExample(),
    );
  }
}
