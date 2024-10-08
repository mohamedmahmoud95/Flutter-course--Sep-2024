//Buttons in Flutter
//1- Material buttons:
//Material buttons are the most commonly used buttons in Flutter. They are used to trigger actions when clicked. Material buttons have a design that is based on the Material Design guidelines.
//ElevatedButton:
//OutlinedButton:
//FilledButton:
//TextButton:
//IconButton:
//DropdownButton:
//PopupMenuButton:

//2-Cupertino buttons:
//Cupertino buttons are iOS-style buttons that are used to trigger actions when clicked. They have a different design compared to material buttons and are commonly used in iOS apps.
//CupertinoButton:
//CupertinoNavigationBarBackButton:
//CupertinoContextMenuAction:

//Code examples:
//Material buttons:
//ElevatedButton:
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonsDemo extends StatefulWidget {
  const ButtonsDemo({super.key});

  @override
  State<ButtonsDemo> createState() => _ButtonsDemoState();
}

class _ButtonsDemoState extends State<ButtonsDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [

                //=========================================================================================================//
                //Material buttons:
                ElevatedButton(
                  onPressed: () {
                    debugPrint("ElevatedButton pressed");
                  },
                  child: const Text("ElevatedButton"),
                ),

                const SizedBox(
                  height: 20,
                ),

                ElevatedButton(
                  onPressed: () {
                    debugPrint("styled ElevatedButton pressed");
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.purple.shade800,
                    foregroundColor: Colors.white,
                    shadowColor: Colors.green,
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: const Text("Styled ElevatedButton"),
                ),
                const SizedBox(
                  height: 20,
                ),
                OutlinedButton(
                  onPressed: () {
                    debugPrint("OutlinedButton pressed");
                  },
                  child: const Text("OutlinedButton"),
                ),
                const SizedBox(
                  height: 20,
                ),
                FilledButton(
                  onPressed: () {
                    debugPrint("FilledButton pressed");
                  },
                  child: const Text("FilledButton"),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextButton(
                  onPressed: () {
                    debugPrint("TextButton pressed");
                  },
                  child: const Text("TextButton"),
                ),
                const SizedBox(
                  height: 20,
                ),
                IconButton(
                  onPressed: () {
                    debugPrint("IconButton pressed");
                  },
                  icon: const Icon(Icons.edit),
                ),
                const SizedBox(
                  height: 20,
                ),


                DropdownButton(
                  onChanged: (value) {
                    debugPrint("DropdownButton pressed");
                  },
                  items: const [
                    DropdownMenuItem(
                      value: 1,
                      child: Text("DropdownMenuItem 1"),
                    ),
                    DropdownMenuItem(
                      value: 2,
                      child: Text("DropdownMenuItem 2"),
                    ),
                    DropdownMenuItem(
                      value: 3,
                      child: Text("DropdownMenuItem 3"),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                PopupMenuButton(
                  itemBuilder: (context) => [
                    const PopupMenuItem(
                      value: 1,
                      child: Text("PopupMenuItem 1"),
                    ),
                    const PopupMenuItem(
                      value: 2,
                      child: Text("PopupMenuItem 2"),
                    ),
                    const PopupMenuItem(
                      value: 3,
                      child: Text("PopupMenuItem 3"),
                    ),
                  ],
                ),
                //=========================================================================================================//

                const SizedBox(
                  height: 20,
                ),

                //=========================================================================================================//
                //Cupertino buttons:
                CupertinoButton(
                  onPressed: () {
                    debugPrint("CupertinoButton pressed");
                  },
                  child: const Text("CupertinoButton"),
                ),
                const SizedBox(
                  height: 20,
                ),
                CupertinoButton(
                  onPressed: () {
                    debugPrint("styled CupertinoButton pressed");
                  },
                  color: CupertinoColors.activeBlue,
                  //pressedOpacity: 0.9,
                  // disabledColor: Colors.grey,
                  // padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: const Text("Styled CupertinoButton"),
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
