import 'package:flutter/material.dart';

class PlayingWithMediaQuery extends StatefulWidget {
  const PlayingWithMediaQuery({Key? key}) : super(key: key);

  @override
  State<PlayingWithMediaQuery> createState() => _PlayingWithMediaQueryState();
}

class _PlayingWithMediaQueryState extends State<PlayingWithMediaQuery> {


  @override
  Widget build(BuildContext context) {
    final double width  = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;

    return Scaffold(


      appBar: AppBar(
        backgroundColor: height < 500 ? Colors.blue : Colors.purple,
        title: Text("Media Query"),
      ),

      body: Container(
        color: width < 700 ? Colors.white : Colors.green,

        child: Center(
          child: Column(
            children: [
              Text(
                "Width = $width",
                  style: const TextStyle(
                    fontSize: 50
                  ),
              ),

              Text(
                "Height = $height",
                style: TextStyle(
                    fontSize: 50
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
