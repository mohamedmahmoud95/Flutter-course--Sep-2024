import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ThemeExample2 extends StatefulWidget {
  const ThemeExample2({Key? key}) : super(key: key);

  @override
  State<ThemeExample2> createState() => _ThemeExampleState();
}

class _ThemeExampleState extends State<ThemeExample2> {
  bool darkMode = false;

  @override
  Widget build(BuildContext context) {
    debugPrint(Theme.of(context).primaryColor.value.toString());
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: darkMode? ThemeData.dark():
      ThemeData(
        primarySwatch: Colors.orange,
        textTheme: GoogleFonts.alkalamiTextTheme()
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Theme example"),
          actions: [
            IconButton(onPressed: (){
              setState(() {
                darkMode = ! darkMode;
              });
            }, icon: Icon(darkMode? Icons.light_mode : Icons.dark_mode)),
          ],
        ),

        body: const Center(
          child: Text("This is an awesome text \n"
              "written by an awesome gentleman\n"
              "to demonstrate theme switching",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 22
          ),),
        ),

        floatingActionButton: FloatingActionButton(
          onPressed: (){},
          child: const Icon(Icons.add),
        ),
      ),
    );
  }

}
