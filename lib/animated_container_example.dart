//study resources: https://api.flutter.dev/flutter/widgets/AnimatedContainer-class.html

import 'package:flutter/material.dart';
import 'package:flutter_animation/animated_size_example.dart';
import 'package:flutter_animation/changing_container_properties_on_run_time.dart';

class AnimatedContainerExample extends StatefulWidget {
  const AnimatedContainerExample({Key? key}) : super(key: key);

  @override
  State<AnimatedContainerExample> createState() =>
      _AnimatedContainerExampleState();
}

class _AnimatedContainerExampleState extends State<AnimatedContainerExample> {
  double width = 50;
  double height = 50;
  Color color = Colors.blue;
  double borderRadius = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("AnimatedContainer example"),
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
                  decoration: BoxDecoration(
                    color: color,
                    borderRadius: BorderRadius.circular(borderRadius),),                ),
                Container(
                  height: height,
                  width: width,
                  decoration: BoxDecoration(
                    color: color,
                    borderRadius: BorderRadius.circular(borderRadius),),
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
                      borderRadius = 30;
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
                      borderRadius = 0;
                    });
                  },
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton:

        FloatingActionButton(
            child: const Icon(Icons.keyboard_arrow_right_rounded),
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) =>
                      const AnimatedSizeExample()));
            }),

    );
  }
}
