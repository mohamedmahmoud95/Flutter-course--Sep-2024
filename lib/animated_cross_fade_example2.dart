//study resources: https://api.flutter.dev/flutter/widgets/AnimatedCrossFade-class.html
import 'package:flutter/material.dart';
import 'package:flutter_animation/animated_align_example.dart';
import 'package:flutter_animation/animated_list_example.dart';
import 'package:flutter_animation/hero_animation_example_small_pic.dart';

class AnimatedCrossFadeExample2 extends StatefulWidget {
  const AnimatedCrossFadeExample2({Key? key}) : super(key: key);

  @override
  State<AnimatedCrossFadeExample2> createState() =>
      _AnimatedCrossFadeExample2State();
}

class _AnimatedCrossFadeExample2State extends State<AnimatedCrossFadeExample2> {
  String _selectedColor = 'Grey';
  String _selectedColorUrl =
      "https://m.media-amazon.com/images/I/71WU1SBc4IL._AC_SX679_.jpg";
  String _currentColorUrl =
      "https://m.media-amazon.com/images/I/71WU1SBc4IL._AC_SX679_.jpg";

  String blackPoloURL =
      "https://m.media-amazon.com/images/I/51w9RcIHUeL._AC_SX679_.jpg";
  String greyPoloURL =
      "https://m.media-amazon.com/images/I/71WU1SBc4IL._AC_SX679_.jpg";
  String bluePoloUrl =
      "https://eg.jumia.is/unsafe/fit-in/500x500/filters:fill(white)/product/45/432662/1.jpg";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
            style: TextStyle(fontSize: 20), "AnimatedCrossFade example 2"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Column(
          children: [
            Center(
              child: AnimatedCrossFade(
                firstChild: SizedBox(
                    height: 300,
                    child:
                        Image.network(_currentColorUrl, fit: BoxFit.cover, alignment: Alignment.topCenter,)),
                secondChild: SizedBox(
                    height: 300,
                    child: Image.network(_selectedColorUrl, fit: BoxFit.cover,  alignment: Alignment.topCenter,)),
                crossFadeState: _selectedColor == 'Grey'
                    ? CrossFadeState.showFirst
                    : CrossFadeState.showSecond,
                duration: const Duration(seconds: 2),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _selectedColor = 'Grey';
                      _selectedColorUrl = greyPoloURL;
                      _currentColorUrl = _selectedColorUrl;
                    });
                  },
                  child: const CircleAvatar(
                    radius: 15,
                    backgroundColor: Colors.grey,
                  ),
                ),
                const SizedBox(
                  width: 30,
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _selectedColorUrl = blackPoloURL;
                      _selectedColor = 'Black';
                      _currentColorUrl = _selectedColorUrl;
                    });
                  },
                  child: const CircleAvatar(
                    radius: 15,
                    backgroundColor: Colors.black,
                  ),
                ),
                const SizedBox(
                  width: 30,
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _selectedColor = 'Blue';
                      _selectedColorUrl = bluePoloUrl;
                      _currentColorUrl = _selectedColorUrl;
                    });
                  },
                  child: const CircleAvatar(
                    radius: 15,
                    backgroundColor: Colors.blue,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.keyboard_arrow_right_rounded),
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const HeroAnimationExample()));
          }),
    );
  }
}
