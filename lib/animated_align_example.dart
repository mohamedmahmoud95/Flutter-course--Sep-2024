import 'package:flutter/material.dart';

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
          color: Colors.orange.shade300,
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
              curve: Curves.elasticOut,
              alignment: _atTopRight? Alignment.bottomLeft : Alignment.topRight,
              child: const FlutterLogo(size: 100,),
            ),
          ),
        ),
      ),
    );
  }
}
