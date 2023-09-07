import 'package:flutter/material.dart';
import 'package:flutter_course_aug23_themes_and_responsive_design/screens/responsive_design_example.dart';
import 'package:flutter_course_aug23_themes_and_responsive_design/screens/responsive_design_example1.dart';
import 'package:flutter_course_aug23_themes_and_responsive_design/screens/themexample.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:
      //  PlayingWithMediaQuery(),
      //ResponsiveDesignExample1(),
      //ResponsiveDesignExample(),
      ThemeExample(),
    );
  }
}
