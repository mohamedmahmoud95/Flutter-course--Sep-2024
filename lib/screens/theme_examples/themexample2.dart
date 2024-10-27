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
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: darkMode? ThemeData.dark():
      ThemeData(
        brightness: Brightness.light,
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: Colors.black,
          foregroundColor: Colors.white,
        ),
        primarySwatch: Colors.deepPurple,
        scaffoldBackgroundColor: Colors.purple.shade50,

       drawerTheme: DrawerThemeData(
         backgroundColor: Colors.deepPurple.shade200
       ),
       textTheme: GoogleFonts.alkalamiTextTheme(),
        fontFamily: 'Outfit',


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

        drawer: Drawer(),

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
          backgroundColor: Theme.of(context).floatingActionButtonTheme.backgroundColor,
          onPressed: (){},
          child:  Icon(Icons.add, color: Theme.of(context).floatingActionButtonTheme.foregroundColor,),
        ),
      ),
    );
  }

}
