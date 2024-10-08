import 'package:flutter/material.dart';

class SimpleButtonDemo extends StatefulWidget {
  const SimpleButtonDemo({super.key});

  @override
  State<SimpleButtonDemo> createState() => _SimpleButtonDemoState();
}

class _SimpleButtonDemoState extends State<SimpleButtonDemo> {
  bool isPressed = false;
  Color buttonColor = Colors.red ;
  String buttonText = "Red" ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:

        //simpleElevatedButton(),
          changingColorButton(),
      ),
    );
  }

  Widget simpleElevatedButton() {
    return ElevatedButton(
      onPressed: () {
        debugPrint("Button pressed");
      },
      child: const Text(
        "Press me",
        style: TextStyle(fontSize: 30),
      ),
    );
  }


  Widget changingColorButton(){


    return ElevatedButton(
      onPressed: () {
        debugPrint("Button pressed");
        setState(() {
          isPressed = !isPressed;
           buttonColor = isPressed?  Colors.green : Colors.red ;
           buttonText = isPressed? "Green":"Red" ;
        });
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: buttonColor,
        foregroundColor: Colors.white,
      ),
      child: Text(
        buttonText,
        style: const TextStyle(fontSize: 30),
      ),
    );
  }
}
