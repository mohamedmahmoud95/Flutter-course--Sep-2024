import 'package:flutter/material.dart';
import 'package:flutter_animation/animated_list_example.dart';

import 'animated_cross_fade_example.dart';

class HeroAnimationExampleBigPic extends StatelessWidget {
  const HeroAnimationExampleBigPic({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          onPressed: () => Navigator.of(context).pop(),
        ),
          title: const Text("Hero animation example"),
      ),

      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Hero(
              tag: "logo....",
              child: Center(
                child: SizedBox(
                  height: 400,
                  child: Image.network(
                      "https://m.media-amazon.com/images/I/51w9RcIHUeL._AC_SX679_.jpg"),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "High quality, 100% cotton Polo T-shirt",
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    "A cotton that speaks Egyptian",
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    "From American pigeon",
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
            ),
          ],
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
