import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TogglingButtonsExercise extends StatefulWidget {
  const TogglingButtonsExercise({super.key});

  @override
  State<TogglingButtonsExercise> createState() =>
      _TogglingButtonsExerciseState();
}

class _TogglingButtonsExerciseState extends State<TogglingButtonsExercise> {
  bool isButton1Pressed = false;
  bool isButton2Pressed = true;

  String notPressedText = 'Not Pressed';
  String pressedText = 'Pressed';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.max,
          children: [

            CupertinoButton(
                onPressed: () {
                  setState(() {
                    isButton1Pressed = !isButton1Pressed;
                    isButton2Pressed = !isButton2Pressed;
                  });
                },
                color: isButton1Pressed ? Colors.green : Colors.red,
                child: Text(isButton1Pressed ? pressedText : notPressedText)),

            CupertinoButton(
                onPressed: () {
                  setState(() {
                    isButton2Pressed = !isButton2Pressed;
                    isButton1Pressed = !isButton1Pressed;
                  });
                },
                color: isButton2Pressed ? Colors.green : Colors.red,
                child: Text(isButton2Pressed ? pressedText : notPressedText)),
          ],
        ),
      ),
    );
  }
}
