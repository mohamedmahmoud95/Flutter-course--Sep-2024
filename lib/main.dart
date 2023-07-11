import 'package:flutter/material.dart';
import 'package:flutter_animation/animated_container_example.dart';
import 'package:flutter_animation/animated_positioned_example.dart';
import 'package:flutter_animation/animated_size_example.dart';
import 'package:flutter_animation/changing_container_properties_on_run_time.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:
      //ChangingContainerPropertiesOnRunTime(),
      //AnimatedContainerExample(),
      //AnimatedSizeExample(),
      AnimatedPositionedExample(),
    );
  }
}
