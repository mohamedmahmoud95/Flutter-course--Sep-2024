
/*
How to use:
comment/uncomment the name of the page after the home property under below
 */


import 'package:flutter/material.dart';
import 'package:flutter_animation/animated_align_example.dart';
import 'package:flutter_animation/animated_container_example.dart';
import 'package:flutter_animation/animated_cross_fade_example.dart';
import 'package:flutter_animation/animated_positioned_example.dart';
import 'package:flutter_animation/animated_size_example.dart';
import 'package:flutter_animation/changing_container_properties_on_run_time.dart';
import 'package:flutter_animation/hero_animation_example_small_pic.dart';

import 'animated_cross_fade_example2.dart';
import 'lottie_animation_example.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
        ),

      ),
      debugShowCheckedModeBanner: false,
      home:
      ChangingContainerPropertiesOnRunTime(),
      //AnimatedContainerExample(),
      //AnimatedSizeExample(),
      //AnimatedPositionedExample(),
      //AnimatedAlignExample(),
      //AnimatedCrossFadeExample2(),
     // HeroAnimationExample(),
      //LottieAnimationExample(),



    );
  }
}
