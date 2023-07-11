import 'package:flutter/material.dart';

class AnimatedSizeExample extends StatefulWidget {
  const AnimatedSizeExample({Key? key}) : super(key: key);

  @override
  State<AnimatedSizeExample> createState() => _AnimatedSizeExampleState();
}

class _AnimatedSizeExampleState extends State<AnimatedSizeExample> {
  bool _isLarge = false;
  double size = 100;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("AnimatedSize"),
      ),
      body:  Center(
        child: GestureDetector(
          child: AnimatedSize(
            duration: Duration(seconds: 1),



          ),
        ),
      ),
    );
  }
}
