import 'package:flutter/material.dart';

import '../widgets/list_of_todos_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 1;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  double width = 0;
  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.grey[50],
      body: SizedBox(
        child: Row(
          children: [
            width < 600
                ? Container()
                : NavigationRail(
                     backgroundColor: Colors.white,
                    onDestinationSelected: _onItemTapped,
                    extended: (width > 800),
                    destinations: const [

                      NavigationRailDestination(
                        icon:   Padding(padding: EdgeInsets.all(20),child:Icon(Icons.grid_view_rounded),),
                        label: Text('Home'),
                      ),
                      NavigationRailDestination(
                        icon: Padding(padding: EdgeInsets.all(20),child: Icon(Icons.calendar_today),),
                        label: Text("Today's Tasks"),
                      ),
                      NavigationRailDestination(
                        icon: Padding(padding: EdgeInsets.all(20), child:Icon(Icons.settings),),
                        label: Text('Settings'),
                      ),
                    ],
                    selectedIndex: _selectedIndex,
                  ),
            Flexible(
              flex: 1,
              fit: FlexFit.loose,
              child: ListOfToDosWidget(),
            ),
          ],
        ),
      ),
      bottomNavigationBar: width > 600
          ? null
          : BottomNavigationBar(
        backgroundColor: Colors.white,
              currentIndex: _selectedIndex,
              onTap: _onItemTapped,
              items: const [
                BottomNavigationBarItem(
                    icon: Icon(Icons.grid_view_rounded), label: 'Home'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.calendar_today_rounded),
                    label: "Today's Tasks"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.settings_rounded), label: 'Settings'),
              ],
            ),
    );
  }
}
