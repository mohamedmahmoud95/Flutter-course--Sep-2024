import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AnimatedLogoWidget extends StatefulWidget {
  const AnimatedLogoWidget({Key? key}) : super(key: key);

  @override
  State<AnimatedLogoWidget> createState() => _AnimatedLogoWidgetState();
}

class _AnimatedLogoWidgetState extends State<AnimatedLogoWidget> {
  double _left = 20;
  double _top = 20;
  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
        tween: Tween<double>(begin: 10, end: 200),
        duration: const Duration(seconds: 1),
        builder: (BuildContext context, double value, Widget? child) {
          return GestureDetector(
            onTap: () {
              setState(() {
                _left = 200;
                _top = 200;
              });
            },
            child: Positioned(
              left: _left,
              top: _top,
              child: FlutterLogo(size: 150),
            ),
          );
        });
  }
}
