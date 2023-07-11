
//study resources: https://api.flutter.dev/flutter/widgets/AnimatedPositioned-class.html

import 'package:flutter/material.dart';
import 'package:flutter_animation/animated_size_example.dart';

import 'animated_align_example.dart';

class AnimatedPositionedExample extends StatefulWidget {
  const AnimatedPositionedExample({Key? key}) : super(key: key);

  @override
  State<AnimatedPositionedExample> createState() => _AnimatedPositionedExampleState();
}

class _AnimatedPositionedExampleState extends State<AnimatedPositionedExample> {

  double _top = 300;
  String _text = "Reveal";

  bool _revealed = false;

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: const Text("AnimatedPositioned example"),
      ),

      body: Center(
        child: Stack(
          children: [
            Positioned(
                left: width/6,
                top: height/6,
                child: Container(
                height: height/2,
                width: width/1.5,
                color: Colors.blue.shade400,
                  child: const Center(
                    child: Text(
                      "Secret text",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30
                      ),
                    ),
                  ),
               ),
            ),

            AnimatedPositioned(
                left: 90,
                top: _top,
                duration: const Duration(milliseconds: 500),
                child: Container(
                  height: 100,
                  width: 200,
                  color: Colors.blue.shade800,
                  child: GestureDetector(
                    onTap: (){
                      setState(() {
                        _revealed = !_revealed;
                        _top = _revealed? 300 : 200;
                        _text = _revealed? "Reveal" : "Cover";
                      });
                    },
                    child: Center(
                      child: Text(
                        _text,
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 40
                        ),
                      ),
                    ),
                  ),

            )),
          ],
        ),
      ),


      floatingActionButton:
      Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            FloatingActionButton(
                child: const Icon(Icons.keyboard_arrow_left_rounded),
                onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>
                  const AnimatedSizeExample ()));
                }
            ),
            FloatingActionButton(
                child: const Icon(Icons.keyboard_arrow_right_rounded),

                onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>
                  const AnimatedAlignExample ()));
                }
            ),
          ]
      ),

    );
  }
}
