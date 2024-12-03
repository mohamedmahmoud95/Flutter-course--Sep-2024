import 'package:flutter/material.dart';
import 'package:todo/view/screens/home_screen.dart';

void main (){


  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:  HomeScreen(),
    );
    }
}
