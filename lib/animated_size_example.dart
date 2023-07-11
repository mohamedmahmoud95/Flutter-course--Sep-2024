import 'package:flutter/material.dart';

class AnimatedSizeExample extends StatefulWidget {
  const AnimatedSizeExample({Key? key}) : super(key: key);

  @override
  State<AnimatedSizeExample> createState() => _AnimatedSizeExampleState();
}

class _AnimatedSizeExampleState extends State<AnimatedSizeExample> {
  bool _isLarge = false;
  double size = 200;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("AnimatedSize"),
      ),
      body:  Center(
        child: GestureDetector(
          onTap: (){
            setState(() {
              _isLarge = !_isLarge;
              size = _isLarge? 100 : size = 300;
            });
          },
          child:  AnimatedSize(
            duration: const Duration(seconds: 1),
            curve: Curves.easeIn,
            child: FlutterLogo(size: size,),

          ),
        ),
      ),
    );
  }
}
