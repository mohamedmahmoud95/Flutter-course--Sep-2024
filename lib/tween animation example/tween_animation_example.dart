import 'package:flutter/material.dart';
import 'package:flutter_animation/tween%20animation%20example%202%20between%20widgets/tween_animation_example_2.dart';
import 'package:flutter_animation/tween%20animation%20example/animated_logo_widget.dart';
import 'package:flutter_animation/tween_sequence_example.dart';

import 'animated_title_widget.dart';

class TweenAnimationExample extends StatefulWidget {
  const TweenAnimationExample({Key? key}) : super(key: key);

  @override
  State<TweenAnimationExample> createState() => _TweenAnimationExampleState();
}

class _TweenAnimationExampleState extends State<TweenAnimationExample> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const AnimatedTitleWidget(text: "TweenAnimation example",),
      ),


      body: const AnimatedLogoWidget(),

      floatingActionButton:
      FloatingActionButton(
          child: const Icon(Icons.keyboard_arrow_right_rounded),
          onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>
            const TweenSequenceExample()));
          }
      ),
    );
  }
}
