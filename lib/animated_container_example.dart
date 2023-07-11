
//study resources: https://api.flutter.dev/flutter/widgets/AnimatedContainer-class.htmlgit

import 'package:flutter/material.dart';

class AnimatedContainerExample extends StatefulWidget {
  const AnimatedContainerExample({Key? key}) : super(key: key);

  @override
  State<AnimatedContainerExample> createState() =>
      _AnimatedContainerExampleState();
}

class _AnimatedContainerExampleState
    extends State<AnimatedContainerExample> {
  double width = 50;
  double height = 50;
  Color color = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Built-in animated widgets"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                AnimatedContainer(
                  curve: Curves.linear,
                  height: height,
                  width: width,
                  duration: Duration(seconds: 1),
                  color: color,
                ),
                Container(
                  height: height,
                  width: width,
                  color: color,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  child: const Text("Grow"),
                  onPressed: () {
                    setState(() {
                      height = 150;
                      width = 150;
                      color = Colors.orange;
                    });
                  },
                ),
                ElevatedButton(
                  child: const Text("Shrink"),
                  onPressed: () {
                    setState(() {
                      height = 50;
                      width = 50;
                      color = Colors.blue;
                    });
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
