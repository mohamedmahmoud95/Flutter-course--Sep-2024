import 'package:flutter/material.dart';

class ZoomInOutExercise extends StatefulWidget {
  const ZoomInOutExercise({super.key});

  @override
  State<ZoomInOutExercise> createState() => _ZoomInOutExerciseState();
}

class _ZoomInOutExerciseState extends State<ZoomInOutExercise> {
  final bool isZoomed = false;
  final double bigSize = 500;
  final double smallSize = 200;
  double currentSize = 200;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
             Image.network(
                'https://picsum.photos/200',
                width: currentSize,
                height: currentSize,
                fit: BoxFit.cover,
              ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  onPressed: () {
                    setState(() {
                      isZoomed
                          ? currentSize = smallSize
                          : currentSize = bigSize;
                    });
                  },
                  icon: const Icon(
                    Icons.zoom_in,
                    size: 50,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    setState(() {
                      isZoomed
                          ? currentSize = bigSize
                          : currentSize = smallSize;
                    });
                  },
                  icon: const Icon(
                    Icons.zoom_out,
                    size: 50,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
