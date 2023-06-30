import 'package:flutter/material.dart';

import 'StationHome.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

List tabwidgets = [
  StationHome(),
  StationHome(),
];

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedLabelStyle: TextStyle(fontSize: 12),
        iconSize: 28,
        unselectedIconTheme: IconThemeData(
          color: Colors.grey,
        ),
        elevation: 5,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.ev_station),
            label: "Station",
          ),
        ],
        backgroundColor: Colors.white,
        showUnselectedLabels: true,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.black,
        selectedIconTheme: IconThemeData(color: Colors.blue),
        currentIndex: currentIndex,
        onTap: (int index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
      body: tabwidgets.elementAt(currentIndex),
    );
  }
}
