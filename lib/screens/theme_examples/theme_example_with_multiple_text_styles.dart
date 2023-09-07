import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';



TextStyle titleTextStyle = GoogleFonts.emilysCandy(
  fontSize: 30,
  fontWeight: FontWeight.bold,
  color: Colors.deepPurple,
);


TextStyle subTitle =const TextStyle(
  fontSize: 20,
  fontWeight: FontWeight.normal,
  fontFamily: 'Outfit',
  color: Colors.purple,
);

TextStyle bodyTextStyle = const TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.normal,
    fontFamily: 'Outfit',
  color: Colors.black,
);

class ThemeExampleWithMultipleTextStyles extends StatefulWidget {
  const ThemeExampleWithMultipleTextStyles({Key? key}) : super(key: key);

  @override
  State<ThemeExampleWithMultipleTextStyles> createState() => _ThemeExampleWithMultipleTextStylesState();
}

class _ThemeExampleWithMultipleTextStylesState extends State<ThemeExampleWithMultipleTextStyles> {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme:  ThemeData(
        primarySwatch: Colors.deepPurple
      ),
      home: Scaffold(
        appBar: AppBar(),

        body: Center(
          child: Container(
            height: 150,
            width: 200,
            child: Card(

              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text("Title",
                      style: titleTextStyle,),
                    ),

                Align(
                  alignment: Alignment.centerLeft,
                  child: Text("subtitle",
                      style: subTitle,),
                ),

                    Text("and here we put any text ",
                    style: bodyTextStyle,)


                  ],
                ),
              ),
            ),
          ),
        )
      ),
    );
  }
}
