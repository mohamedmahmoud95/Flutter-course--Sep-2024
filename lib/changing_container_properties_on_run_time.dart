import 'package:flutter/material.dart';

class ChangingContainerPropertiesOnRunTime extends StatefulWidget {
  const ChangingContainerPropertiesOnRunTime({Key? key}) : super(key: key);

  @override
  State<ChangingContainerPropertiesOnRunTime> createState() =>
      _ChangingContainerPropertiesOnRunTimeState();
}

class _ChangingContainerPropertiesOnRunTimeState
    extends State<ChangingContainerPropertiesOnRunTime> {
  double width = 50;
  double height = 50;
  Color color = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Regular container"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [

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
