import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'buttons.dart';

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
      ButtonsDemo(),
      // Scaffold(
      //   body: Center(
      //     child:
      //     CupertinoButton(onPressed: (){}, color: Colors.blue,
      //     pressedOpacity: 0.9,
      //     disabledColor: Colors.grey,
      //       padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10), child: Text("press me"),
      //     ),
      //   ),
      // ),
    );
  }
}
