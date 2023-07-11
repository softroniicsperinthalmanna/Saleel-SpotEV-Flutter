import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../Offers/Offers.dart';
import '../Profile.dart';
import '../Stations/StationsShow.dart';

import 'HomeNav.dart';

class HomePageUser extends StatefulWidget {
  const HomePageUser({super.key});

  @override
  State<HomePageUser> createState() => _HomePageUserState();
}

var currentIndex = 0;
List listofIcons = [
  Icons.home,
  Icons.ev_station_outlined,
  Icons.local_offer_rounded,
  Icons.person,
];
List listofStrings = ['Home', 'Station', 'Offers', 'Profile'];
List TabWidgets = [const Home(), const StationsShow(), const Offers(), const Profile()];

class _HomePageUserState extends State<HomePageUser> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      // bottomNavigationBar:,
      // bottomNavigationBar: BottomNavigationBar(
      //   elevation: 5,
      //   items: const [
      //     BottomNavigationBarItem(
      //       icon: Icon(
      //         Icons.home,
      //       ),
      //       label: "Home",
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(
      //         Icons.ev_station,
      //       ),
      //       label: "Stations",
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(
      //         Icons.offline_pin_rounded,
      //       ),
      //       label: "Offers",
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(
      //         Icons.person,
      //       ),
      //       label: "Profile",
      //     )
      //   ],
      // backgroundColor: Colors.white,
      // showUnselectedLabels: true,
      // selectedItemColor: Colors.blue,
      // unselectedItemColor: Colors.black,
      // selectedIconTheme: IconThemeData(color: Colors.blue),
      // currentIndex: indexnum,
      // onTap: (int index) {
      //   setState(() {
      //     indexnum = index;
      //   });
      body: TabWidgets.elementAt(currentIndex),
      bottomNavigationBar: Container(
        margin: EdgeInsets.all(screenWidth * .0),
        height: screenWidth * .140,
        decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  color: Colors.black.withOpacity(.2),
                  blurRadius: 30,
                  offset: const Offset(0, 10)),
            ],
            borderRadius: BorderRadius.circular(0)),
        child: ListView.builder(
          itemCount: 4,
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.symmetric(horizontal: screenWidth * .08),
          itemBuilder: (context, index) => InkWell(
            onTap: () {
              setState(() {
                currentIndex = index;
                HapticFeedback.lightImpact();
              });
            },
            highlightColor: Colors.transparent,
            splashColor: Colors.transparent,
            child: Stack(
              children: [
                AnimatedContainer(
                  duration: const Duration(seconds: 1),
                  curve: Curves.fastLinearToSlowEaseIn,
                  width: index == currentIndex
                      ? screenWidth * .32
                      : screenWidth * .18,
                  alignment: Alignment.center,
                  child: AnimatedContainer(
                    duration: const Duration(seconds: 1),
                    curve: Curves.fastLinearToSlowEaseIn,
                    height: index == currentIndex ? screenWidth * .10 : 0,
                    width: index == currentIndex ? screenWidth * .30 : 0,
                    decoration: BoxDecoration(
                        color: index == currentIndex
                            ? Colors.blueAccent.withOpacity(.2)
                            : Colors.transparent,
                        borderRadius: BorderRadius.circular(50)),
                  ),
                ),
                AnimatedContainer(
                  duration: const Duration(seconds: 3),
                  curve: Curves.fastLinearToSlowEaseIn,
                  width: index == currentIndex
                      ? screenWidth * .31
                      : screenWidth * .18,
                  alignment: Alignment.center,
                  child: Stack(
                    children: [
                      Row(
                        children: [
                          AnimatedContainer(
                            duration: const Duration(seconds: 2),
                            curve: Curves.fastLinearToSlowEaseIn,
                            width:
                                index == currentIndex ? screenWidth * .13 : 0,
                          ),
                          AnimatedOpacity(
                            opacity: index == currentIndex ? 1 : 0,
                            duration: const Duration(
                              seconds: 1,
                            ),
                            curve: Curves.fastLinearToSlowEaseIn,
                            child: Text(
                              index == currentIndex
                                  ? '${listofStrings[index]}'
                                  : '',
                              style: const TextStyle(
                                color: Colors.blueAccent,
                                fontWeight: FontWeight.w600,
                                fontSize: 12,
                              ),
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          AnimatedContainer(
                            duration: const Duration(seconds: 1),
                            curve: Curves.fastLinearToSlowEaseIn,
                            width:
                                index == currentIndex ? screenWidth * .03 : 20,
                          ),
                          Icon(
                            listofIcons[index],
                            size: screenWidth * 0.076,
                            color: index == currentIndex
                                ? Colors.blueAccent
                                : Colors.black26,
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
