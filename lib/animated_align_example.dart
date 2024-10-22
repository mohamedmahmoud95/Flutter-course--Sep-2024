//study resources: https://api.flutter.dev/flutter/widgets/AnimatedAlign-class.html

import 'package:flutter/material.dart';
import 'package:flutter_animation/animated_cross_fade_example.dart';
import 'package:flutter_animation/animated_positioned_example.dart';

class AnimatedAlignExample extends StatefulWidget {
  const AnimatedAlignExample({Key? key}) : super(key: key);

  @override
  State<AnimatedAlignExample> createState() => _AnimatedAlignExampleState();
}

class _AnimatedAlignExampleState extends State<AnimatedAlignExample> {

  bool _atTopRight = false;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: const Text("AnimatedAlign example"),
      ),
      body: Center(
        child: Container(
          color: Colors.amber.shade300.withOpacity(0.5),
          height: height/2.5,
          width: width/1.5,
          child: GestureDetector(
            onTap: (){
              setState(() {
                _atTopRight = !_atTopRight;
              });
            },
            child: AnimatedAlign(
              duration: const Duration(seconds: 1),
             curve: Curves.elasticIn,
              alignment: _atTopRight? Alignment.bottomLeft : Alignment.topRight,
              child: const FlutterLogo(size: 100,),
            ),
          ),
        ),
      ),


      floatingActionButton:

            FloatingActionButton(
                child: const Icon(Icons.keyboard_arrow_right_rounded),

                onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>
                  const AnimatedCrossFadeExample()));
                }
            ),

    );
  }
}
