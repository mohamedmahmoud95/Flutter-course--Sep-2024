//study resources: https://api.flutter.dev/flutter/widgets/AnimatedOpacity-class.html

import 'package:flutter/material.dart';
import 'package:flutter_animation/tween%20animation%20example/tween_animation_example.dart';

class AnimatedOpacityExample extends StatefulWidget {
  const AnimatedOpacityExample({Key? key}) : super(key: key);

  @override
  State<AnimatedOpacityExample> createState() => _AnimatedOpacityExampleState();
}

class _AnimatedOpacityExampleState extends State<AnimatedOpacityExample> {
  double _currentOpacity = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text("AnimatedOpacity example"),
        ),


      body:
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                AnimatedOpacity(
                  duration: const Duration(seconds: 1),
                  opacity: _currentOpacity,
                  child: const FlutterLogo(size: 300, style: FlutterLogoStyle.stacked),
                ),

                ElevatedButton(onPressed: (){
                  setState(() {
                    _currentOpacity =
                    _currentOpacity == 1? 0 : 1;
                  });
                }, child: const Text("Animate")),
              ],
            ),
          ),






      floatingActionButton:

      FloatingActionButton(
          child: const Icon(Icons.keyboard_arrow_right_rounded),
          onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>
            const TweenAnimationExample()));
          }
      ),
    );
  }
}
