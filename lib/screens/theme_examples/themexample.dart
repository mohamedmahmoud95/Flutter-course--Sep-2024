import 'package:flutter/material.dart';

class ThemeExample extends StatefulWidget {
  const ThemeExample({Key? key}) : super(key: key);

  @override
  State<ThemeExample> createState() => _ThemeExampleState();
}

class _ThemeExampleState extends State<ThemeExample> {
  bool darkMode = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      theme: darkMode? ThemeData.dark():ThemeData.light(),
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

        body: Center(
          child: Card(
            child: AlertDialog(
              title: const Text("This is a title"),
              content: const Text("This is a content"),
              actions: [
                TextButton(onPressed: (){}, child: const Text("Cancel")),
                TextButton(onPressed: (){}, child: const Text("Ok")),
              ],
            ),
          ),
        ),


        floatingActionButton: FloatingActionButton(
          onPressed: (){},
          child: const Icon(Icons.add),
        ),
      ),

    );
  }
}
