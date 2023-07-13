// import 'package:flutter/cupertino.dart';
//
// class AnimatedTitleWidget extends StatefulWidget {
//   final String text;
//   const AnimatedTitleWidget({Key? key, required this.text}) : super(key: key);
//
//   @override
//   State<AnimatedTitleWidget> createState() => _AnimatedTitleWidgetState();
// }
//
// class _AnimatedTitleWidgetState extends State<AnimatedTitleWidget> {
//   @override
//   Widget build(BuildContext context) {
//     return TweenAnimationBuilder(
//       duration: const Duration(seconds: 1),
//       tween: Tween <double> (begin: 0, end: 1),
//       builder: (BuildContext context, double value, Widget? child) {
//         return Opacity(opacity: value, child: child,);
//       },
//       child: Text(widget.text),
//     );
//   }
// }



import 'package:flutter/cupertino.dart';

class AnimatedTitleWidget extends StatefulWidget {
  final String text;
  const AnimatedTitleWidget({Key? key, required this.text}) : super(key: key);

  @override
  State<AnimatedTitleWidget> createState() => _AnimatedTitleWidgetState();
}

class _AnimatedTitleWidgetState extends State<AnimatedTitleWidget> {
  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      duration: const Duration(seconds: 1),
      tween: Tween <double> (begin: 0, end: 1),
      builder: (BuildContext context, double value, Widget? child) {
        return Opacity(
            opacity: value,
          child: Padding(
            padding:  EdgeInsets.only(top: value*20),
            child: child,

          )
        );
      },
      child: Text(widget.text),
    );
  }
}
