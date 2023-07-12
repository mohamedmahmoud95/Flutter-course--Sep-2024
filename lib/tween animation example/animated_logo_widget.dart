import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'animated_title_widget.dart';

class AnimatedLogoWidget extends StatefulWidget {
  const AnimatedLogoWidget({Key? key}) : super(key: key);

  @override
  State<AnimatedLogoWidget> createState() => _AnimatedLogoWidgetState();
}

class _AnimatedLogoWidgetState extends State<AnimatedLogoWidget> {

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
        curve: Curves.bounceOut,

        tween: Tween<double>(begin: 0, end: 300),

        duration: const Duration(seconds: 1),
        builder: (BuildContext context, double value, Widget? child) {
          return Stack(
            children: [
              Positioned(
                left: value/3,
                top: value,
                child: const FlutterLogo(size: 150),
              ),
            ],
          );
        }
    );
  }
}
