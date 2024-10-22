import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LottieAnimationExample extends StatefulWidget {
  const LottieAnimationExample({
    super.key,
  });

  @override
  State<LottieAnimationExample> createState() => _LottieAnimationExampleState();
}

class _LottieAnimationExampleState extends State<LottieAnimationExample> {
  bool isZoomedIn = false;
  double size = 100;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Lottie Animation example"),
      ),
      body: Center(
        child: Lottie.asset('assets/celebration_animation.json'),

      ),


    );
  }
}
