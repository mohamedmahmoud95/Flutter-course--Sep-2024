import 'package:flutter/material.dart';
import 'package:todo/view/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

        theme: ThemeData(
          primarySwatch: Colors.blue,
          brightness: Brightness.light,
          primaryColor: Colors.blue,
          bottomAppBarTheme: const BottomAppBarTheme(color: Colors.blue),
        ),
        home: HomeScreen()

    );
  }
}
