import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '0_simple_button_demo.dart';
import '1_types_of_buttons.dart';

void main() {
  runApp(MyApp());
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

      debugShowCheckedModeBanner: false,
      home:
      SimpleButtonDemo(),
      //TypesOfButtonsDemo(),

    );
  }
}
