// import 'package:flutter/material.dart';
//
// class TweenAnimationExample2 extends StatefulWidget {
//   const TweenAnimationExample2({Key? key}) : super(key: key);
//
//   @override
//   State<TweenAnimationExample2> createState() => _TweenAnimationExample2State();
// }
//
// class _TweenAnimationExample2State extends State<TweenAnimationExample2> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: TweenAnimationBuilder(
//         duration: const Duration (seconds: 1),
//
//         tween: Tween<double>(begin: 0, end: 1),
//         builder: (BuildContext context, Object? value, Widget? child) {
//           return Padding(
//             padding: const EdgeInsets.only(top: 20),
//             child: Transform(
//               transform: Matrix4.rotationZ(value as double),
//               child: child,
//             ),
//           );
//         },
//
//         child: circle(),
//
//       ),
//
//
//     );
//   }
//
//   Widget circle () => const CircleAvatar(
//     radius: 300,
//     backgroundColor: Colors.red,
//   );
//
//   Widget square() => Center(
//     child: Container(
//       height: 200,
//       width: 200,
//       color: Colors.green,
//     ),
//   );
// }


import 'package:flutter/material.dart';

class TweenAnimationExample2 extends StatefulWidget {
  const TweenAnimationExample2({Key? key}) : super(key: key);

  @override
  State<TweenAnimationExample2> createState() => _TweenAnimationExample2State();
}

class _TweenAnimationExample2State extends State<TweenAnimationExample2>   with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    );

    _animation = Tween<double>(begin: 0, end: 1).animate(_animationController);

    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Circle to Square Animation'),
      ),
      body: Center(
        child: AnimatedBuilder(
          animation: _animation,
          builder: (
              BuildContext context, Widget? child) {
            double value = _animation.value;
            double size = 200.0;

            if (value < 0.5) {
              // Circle to Square transformation
              double circleFraction = 1 - (value * 2);
              double radius = size / 2 * circleFraction;
              return Container(
                width: radius * 2,
                height: radius * 2,
                decoration: const BoxDecoration(
                  color: Colors.blue,
                  shape: BoxShape.circle,
                ),
              );
            } else {
              // Square to Circle transformation
              double squareFraction = (value - 0.5) * 2;
              double width = size * squareFraction;
              double height = size / 2;
              return Container(
                width: width,
                height: height,
                decoration: BoxDecoration(
                  color: Colors.yellow,
                  borderRadius: BorderRadius.circular(10),
                ),
              );
            }
          },
        ),
      ),
    );
  }
}