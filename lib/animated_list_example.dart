import 'package:flutter/material.dart';

import 'animated_cross_fade_example.dart';
import 'animated_positioned_example.dart';

class AnimatedListExample extends StatefulWidget {
  const AnimatedListExample({Key? key}) : super(key: key);

  @override
  State<AnimatedListExample> createState() => _AnimatedListExampleState();
}

class _AnimatedListExampleState extends State<AnimatedListExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          onPressed: ()=> Navigator.of(context).pop(),
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
