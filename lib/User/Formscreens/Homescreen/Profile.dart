import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:spotev/User/Formscreens/Homescreen/Profile/Community/Community.dart';
import 'package:spotev/User/Formscreens/Homescreen/Profile/Complaints/Complaints.dart';
import 'package:spotev/User/Formscreens/Homescreen/Profile/Editprofile/EditProfile.dart';
import 'package:spotev/User/Formscreens/Homescreen/Profile/Favorites/Favorites.dart';
import 'package:spotev/User/Formscreens/Homescreen/Profile/History/ChargingHistory.dart';
import 'package:spotev/User/Formscreens/Homescreen/Profile/Manage%20Ev/ManageEV.dart';
import 'package:spotev/User/Formscreens/Homescreen/Profile/MyBookings/MyBookings.dart';
import 'package:spotev/User/Formscreens/Homescreen/Profile/Trips/TripPlanner.dart';
import 'package:spotev/User/Formscreens/Homescreen/Profile/Wallet/Wallet.dart';
import 'package:spotev/User/Formscreens/Loginscreen.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: Padding(
        padding: const EdgeInsets.symmetric(vertical: 60),
        child: Drawer(
          shadowColor: Colors.blueAccent,
          width: 230,
          child: Column(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => Complaints(),
                  ));
                },
                child: ListTile(
                  leading: FaIcon(
                    FontAwesomeIcons.book,
                    color: Color.fromARGB(255, 99, 49, 216),
                  ),
                  title: Text(
                    "Complaints",
                    style: TextStyle(
                      fontSize: 17,
                      color: Color.fromARGB(255, 99, 49, 216),
                    ),
                  ),
                  trailing: Icon(
                    Icons.navigate_next_sharp,
                    color: Color.fromARGB(255, 99, 49, 216),
                    size: 30,
                  ),
                ),
              ),
              Divider(
                thickness: 1.5,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => Community(),
                  ));
                },
                child: ListTile(
                  leading: Icon(
                    Icons.people_sharp,
                    size: 25,
                    color: Color.fromARGB(255, 99, 49, 216),
                  ),
                  title: Text(
                    "Community",
                    style: TextStyle(
                      fontSize: 17,
                      color: Color.fromARGB(255, 99, 49, 216),
                    ),
                  ),
                  trailing: Icon(
                    Icons.navigate_next_sharp,
                    size: 30,
                    color: Color.fromARGB(255, 99, 49, 216),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        centerTitle: true,
        elevation: 0,
        toolbarHeight: 140,
        flexibleSpace: Container(
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 99, 49, 216),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ))),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Column(
                  children: [
                    Image(image: AssetImage("Images/ProfiePic.png")),
                    Text(
                      "Saleel Mhd",
                      style: TextStyle(fontSize: 15),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "apple@gmail.com",
                        style: TextStyle(fontSize: 14),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 2.0, bottom: 2),
                        child: Text(
                          "987654321",
                          style: TextStyle(fontSize: 14),
                        ),
                      ),
                      ElevatedButton.icon(
                          icon: Icon(
                            Icons.edit,
                            color: Colors.green,
                            size: 15.0,
                          ),
                          label: Text(
                            'Edit Profile',
                            style: TextStyle(color: Colors.black),
                          ),
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => EditProfile(),
                            ));
                          },
                          style: ElevatedButton.styleFrom(
                            shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(5),
                            ),
                            backgroundColor: Colors.white,
                          )),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          SizedBox(
            height: 10,
          ),
          Container(
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(123, 0, 0, 0),
                    blurRadius: 0.5,
                    spreadRadius: 0,
                    offset: Offset(0, 2), // shadow direction: bottom right
                  )
                ],
              ),
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => ManageEV(),
                  ));
                },
                child: Container(
                    child: Center(
                        child: Row(
                      children: [
                        Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: FaIcon(
                              FontAwesomeIcons.carRear,
                              size: 20,
                              color: Color.fromARGB(255, 99, 49, 216),
                            )),
                        Padding(
                          padding: const EdgeInsets.only(left: 48.0),
                          child: Text(
                            "ManageEV",
                            style: TextStyle(
                              fontSize: 20,
                              color: Color.fromARGB(255, 99, 49, 216),
                            ),
                          ),
                        ),
                      ],
                    )),
                    width: 100,
                    height: 50),
              ) // child widget, replace with your own
              ),
          SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => MyBookings(),
              ));
            },
            child: Container(
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromARGB(123, 0, 0, 0),
                      blurRadius: 0.5,
                      spreadRadius: 0,
                      offset: Offset(0, 2), // shadow direction: bottom right
                    )
                  ],
                ),
                child: Container(
                    child: Center(
                      child: Row(
                        children: [
                          Padding(
                              padding: const EdgeInsets.only(left: 18.0),
                              child: FaIcon(
                                FontAwesomeIcons.calendarCheck,
                                size: 23,
                                color: Color.fromARGB(255, 99, 49, 216),
                              )),
                          Padding(
                            padding: const EdgeInsets.only(left: 48.0),
                            child: Text(
                              "My Bookings",
                              style: TextStyle(
                                fontSize: 20,
                                color: Color.fromARGB(255, 99, 49, 216),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    width: 100,
                    height: 50) // child widget, replace with your own
                ),
          ),
          SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => ChargingHistory(),
              ));
            },
            child: Container(
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromARGB(123, 0, 0, 0),
                      blurRadius: 0.5,
                      spreadRadius: 0,
                      offset: Offset(0, 2),
                    )
                  ],
                ),
                child: Container(
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 18.0),
                          child: Icon(
                            Icons.history,
                            size: 28,
                            color: Color.fromARGB(255, 99, 49, 216),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 48.0),
                          child: Text(
                            "History",
                            style: TextStyle(
                              fontSize: 20,
                              color: Color.fromARGB(255, 99, 49, 216),
                            ),
                          ),
                        ),
                      ],
                    ),
                    width: 100,
                    height: 40)),
          ),
          SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => WAllet(),
              ));
            },
            child: Container(
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromARGB(123, 0, 0, 0),
                      blurRadius: 0.5,
                      spreadRadius: 0,
                      offset: Offset(0, 2), // shadow direction: bottom right
                    ),
                  ],
                ),
                child: Container(
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 18.0),
                        child: Icon(
                          Icons.wallet,
                          size: 30,
                          color: Color.fromARGB(255, 99, 49, 216),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 48.0),
                        child: Text(
                          "Wallet",
                          style: TextStyle(
                            fontSize: 20,
                            color: Color.fromARGB(255, 99, 49, 216),
                          ),
                        ),
                      ),
                    ],
                  ),
                  width: 100,
                  height: 40,
                ) // child widget, replace with your own
                ),
          ),
          SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => Trip(),
              ));
            },
            child: Container(
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromARGB(123, 0, 0, 0),
                      blurRadius: 0.5,
                      spreadRadius: 0,
                      offset: Offset(0, 2), // shadow direction: bottom right
                    )
                  ],
                ),
                child: Container(
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 18.0),
                          child: Icon(
                            Icons.trip_origin,
                            size: 30,
                            color: Color.fromARGB(255, 99, 49, 216),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 48.0),
                          child: Text(
                            "Trips",
                            style: TextStyle(
                              fontSize: 20,
                              color: Color.fromARGB(255, 99, 49, 216),
                            ),
                          ),
                        ),
                      ],
                    ),
                    width: 100,
                    height: 50) // child widget, replace with your own
                ),
          ),
          SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => Favorites(),
              ));
            },
            child: Container(
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromARGB(123, 0, 0, 0),
                      blurRadius: 0.5,
                      spreadRadius: 0,
                      offset: Offset(0, 2), // shadow direction: bottom right
                    )
                  ],
                ),
                child: Container(
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 18.0),
                          child: Icon(
                            Icons.favorite_border_outlined,
                            size: 30,
                            color: Color.fromARGB(255, 99, 49, 216),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 48.0),
                          child: Text(
                            "Favorites",
                            style: TextStyle(
                              fontSize: 20,
                              color: Color.fromARGB(255, 99, 49, 216),
                            ),
                          ),
                        ),
                      ],
                    ),
                    width: 100,
                    height: 50) // child widget, replace with your own
                ),
          ),
          SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                      actionsAlignment: MainAxisAlignment.spaceEvenly,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      title: Center(
                          child: Column(
                        children: [
                          const Text(
                            "Logout",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Are You Sure?",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w400),
                          ),
                        ],
                      )),
                      actions: <Widget>[
                        ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: Text(
                              "Cancel",
                              style: TextStyle(color: Colors.indigo),
                            ),
                            style: TextButton.styleFrom(
                                elevation: 5,
                                minimumSize: Size(128, 46),
                                backgroundColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(6)),
                                textStyle: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ))),
                        ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => Login(),
                              ));
                            },
                            child: Text(
                              "Yes",
                              style: TextStyle(color: Colors.red),
                            ),
                            style: TextButton.styleFrom(
                                elevation: 5,
                                minimumSize: Size(128, 46),
                                backgroundColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(6)),
                                textStyle: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ))),
                      ]);
                },
              );
            },
            child: Container(
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromARGB(123, 0, 0, 0),
                      blurRadius: 0.5,
                      spreadRadius: 0,
                      offset: Offset(0, 2), // shadow direction: bottom right
                    )
                  ],
                ),
                child: Container(
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 18.0),
                          child: Icon(
                            Icons.logout,
                            color: Colors.red,
                            size: 30,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 48.0),
                          child: Text(
                            "Logout",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.red,
                            ),
                          ),
                        ),
                      ],
                    ),
                    width: 100,
                    height: 50) // child widget, replace with your own
                ),
          ),
        ],
      ),
    );
  }
}
