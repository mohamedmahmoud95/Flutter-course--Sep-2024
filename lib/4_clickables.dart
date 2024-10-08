import 'package:flutter/material.dart';

class Clickables extends StatefulWidget {
  const Clickables({super.key});

  @override
  State<Clickables> createState() => _ClickablesState();
}

class _ClickablesState extends State<Clickables> {
  final bool isZoomed = false;
  final double bigSize = 500;
  final double smallSize = 200;
  double currentSize = 200;

  String text = "double tap to zoom in, long press to zoom out";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      gestureDetectorExample(),
     //   inkwellExample(),
    );
  }

  Widget gestureDetectorExample() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          GestureDetector(
            onDoubleTap: () {
              setState(() {
                currentSize = bigSize;
                text = 'Double tapped';
              });
            },
            onLongPress: () {
              setState(() {
                currentSize = smallSize;
                text = 'Long pressed';
              });
            },
            child: Image.network(
              'https://picsum.photos/200',
              width: currentSize,
              height: currentSize,
              fit: BoxFit.cover,
            ),
          ),
          Text(
            text,
            style: const TextStyle(fontSize: 30),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }


    Widget inkwellExample(){
        return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                onDoubleTap: () {
                  setState(() {
                    currentSize = bigSize;
                    text = 'Double tapped';
                  });
                },
                onLongPress: () {
                  setState(() {
                    currentSize = smallSize;
                    text = 'Long pressed';
                  });
                },
                child: Image.network(
                  'https://picsum.photos/200',
                  width: currentSize,
                  height: currentSize,
                  fit: BoxFit.cover,
                ),
              ),
              Text(
                text,
                style: const TextStyle(fontSize: 30),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        );
    }

}
