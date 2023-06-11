import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

int indexnum = 0;

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("Images/GoogleMap.jpg"), fit: BoxFit.cover),
          color: Color.fromARGB(255, 155, 161, 165),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 30, right: 80, top: 60),
          child: Container(
            child: TextFormField(
              decoration: const InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(30),
                    ),
                  ),
                  prefixIcon: Icon(Icons.search),
                  filled: true,
                  fillColor: Colors.white,
                  hintText: "Search a location..."),
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.ev_station,
            ),
            label: "Stations",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.offline_pin_rounded,
            ),
            label: "Offers",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
            ),
            label: "Profile",
          )
        ],
        backgroundColor: Colors.white,
        showUnselectedLabels: true,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.black,
        selectedIconTheme: IconThemeData(color: Colors.blue),
        currentIndex: indexnum,
        onTap: (int index) {
          setState(() {
            indexnum = index;
          });
        },
      ),
    );
  }
}
