//study resources: https://api.flutter.dev/flutter/widgets/AnimatedCrossFade-class.html
import 'package:flutter/material.dart';
import 'package:flutter_animation/animated_align_example.dart';
import 'package:flutter_animation/animated_list_example.dart';

class AnimatedCrossFadeExample extends StatefulWidget {
  const AnimatedCrossFadeExample({Key? key}) : super(key: key);

  @override
  State<AnimatedCrossFadeExample> createState() => _AnimatedCrossFadeExampleState();
}

class _AnimatedCrossFadeExampleState extends State<AnimatedCrossFadeExample> {
  String _selectedColor = 'Grey';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("AnimatedCrossFade example"),
      ),
      
      body:  Padding(
        padding: const EdgeInsets.all(50.0),
        child: Column(
          children: [
            Center(
              child: AnimatedCrossFade(
                firstChild: Image.network("https://m.media-amazon.com/images/I/71WU1SBc4IL._AC_SX679_.jpg"),
                secondChild: Image.network("https://m.media-amazon.com/images/I/51w9RcIHUeL._AC_SX679_.jpg"),
                crossFadeState: _selectedColor == 'Grey'? CrossFadeState.showFirst : CrossFadeState.showSecond,
                duration: const Duration(seconds: 1),
              ),
            ),

            const SizedBox(height: 50,),


            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: (){
                    setState(() {
                      _selectedColor = 'Grey';
                    });
                  },
                  child: const CircleAvatar(
                    backgroundColor: Colors.grey,
                  ),
                ),

                const SizedBox(width: 50,),

                GestureDetector(
                  onTap: (){
                    setState(() {
                      _selectedColor = 'Black';
                    });
                  },
                  child: const CircleAvatar(
                    backgroundColor: Colors.black,
                  ),
                )
              ],
            ),


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
              const AnimatedAlignExample  ()));
              }
          ),
          FloatingActionButton(
              child: const Icon(Icons.keyboard_arrow_right_rounded),

              onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>
                const AnimatedListExample()));
              }
          ),

        ],

      ),

    );
  }
}
