

//study resources: https://api.flutter.dev/flutter/widgets/AnimatedSize-class.html

import 'package:flutter/material.dart';
import 'package:flutter_animation/animated_align_example.dart';
import 'package:flutter_animation/animated_container_example.dart';
import 'package:flutter_animation/animated_positioned_example.dart';

class AnimatedSizeExample extends StatefulWidget {
  const AnimatedSizeExample({Key? key}) : super(key: key);

  @override
  State<AnimatedSizeExample> createState() => _AnimatedSizeExampleState();
}

class _AnimatedSizeExampleState extends State<AnimatedSizeExample> {
  bool _isLarge = false;
  double size = 200;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("AnimatedSize example"),
      ),
      body:  Center(
        child: GestureDetector(
          onTap: (){
            setState(() {
              _isLarge = !_isLarge;
              size = _isLarge? 100 : size = 300;
            });
          },
          child:  AnimatedSize(
            duration: const Duration(seconds: 1),
            curve: Curves.ease,
            child: FlutterLogo(size: size,),

          ),
        ),
      ),




      floatingActionButton:


            FloatingActionButton(
                child: const Icon(Icons.keyboard_arrow_right_rounded),

                onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>
                  const AnimatedPositionedExample()));
                }
            ),

    );
  }
}
