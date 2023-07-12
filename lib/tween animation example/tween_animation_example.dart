import 'package:flutter/material.dart';
import 'package:flutter_animation/tween%20animation%20example/animated_logo_widget.dart';

import 'animated_title_widget.dart';

class TweenAnimationExample extends StatefulWidget {
  const TweenAnimationExample({Key? key}) : super(key: key);

  @override
  State<TweenAnimationExample> createState() => _TweenAnimationExampleState();
}

class _TweenAnimationExampleState extends State<TweenAnimationExample> {
  double _left = 20;
  double _top = 20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const AnimatedTitleWidget(text: "Title",),
      ),


      body: TweenAnimationBuilder(
          tween: Tween<double>(begin: 0, end: 300),
          duration: const Duration(seconds: 1),
          builder: (BuildContext context, double value, Widget? child) {
            return Stack(
              children: [Positioned(
                left: value/3,
                top: value,
                child: const FlutterLogo(size: 150),
              ),],
            );
          }),

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
