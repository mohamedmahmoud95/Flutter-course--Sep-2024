import 'package:flutter/material.dart';
import 'package:flutter_animation/animated_cross_fade_example.dart';
import 'package:flutter_animation/hero_animation_example_big_pic.dart';

import 'animated_list_example.dart';

class HeroAnimationExample extends StatelessWidget {
  const HeroAnimationExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("Hero animation example"),
      ),

      body: Center(
        child: Wrap(
          children: [

            SizedBox(height: 100, child: Image.network("https://m.media-amazon.com/images/I/71WU1SBc4IL._AC_SX679_.jpg")),
            SizedBox(height: 100, child: Image.network("https://m.media-amazon.com/images/I/71WU1SBc4IL._AC_SX679_.jpg")),
            SizedBox(height: 100, child: Image.network("https://m.media-amazon.com/images/I/71WU1SBc4IL._AC_SX679_.jpg")),
            SizedBox(height: 100, child: Image.network("https://m.media-amazon.com/images/I/71WU1SBc4IL._AC_SX679_.jpg")),



            GestureDetector(
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => HeroAnimationExampleBigPic()));

            },
            child:  Hero(
              tag: "logo....",
                child:
                SizedBox(height: 100, child: Image.network("https://m.media-amazon.com/images/I/51w9RcIHUeL._AC_SX679_.jpg"),
                ),
          ),
            ),
            SizedBox(height: 100, child: Image.network("https://m.media-amazon.com/images/I/71WU1SBc4IL._AC_SX679_.jpg")),
            SizedBox(height: 100, child: Image.network("https://m.media-amazon.com/images/I/71WU1SBc4IL._AC_SX679_.jpg")),
            SizedBox(height: 100, child: Image.network("https://m.media-amazon.com/images/I/71WU1SBc4IL._AC_SX679_.jpg")),
            SizedBox(height: 100, child: Image.network("https://m.media-amazon.com/images/I/71WU1SBc4IL._AC_SX679_.jpg")),


          ]
        ),
      ),


      floatingActionButton:

      FloatingActionButton(
          child: const Icon(Icons.keyboard_arrow_right_rounded),
          onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>
            const AnimatedListExample()));
          }
      ),


    );
  }
}
