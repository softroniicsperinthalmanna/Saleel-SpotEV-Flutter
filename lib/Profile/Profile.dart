import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
        padding: const EdgeInsets.symmetric(vertical: 115),
        child: Drawer(
          shadowColor: Colors.blueAccent,
          width: 230,
          child: Column(
            children: [
              ListTile(
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
              Divider(
                thickness: 1.5,
              ),
              ListTile(
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
            ],
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
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
                    Column(
                      children: [],
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "apple@gmail.com",
                        style: TextStyle(fontSize: 15),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 3.0, bottom: 3),
                        child: Text(
                          "987654321",
                          style: TextStyle(fontSize: 15),
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
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(0),
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
              height: 70,
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
                            FontAwesomeIcons.carRear,
                            size: 25,
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
                  height: 50) // child widget, replace with your own
              ),
          SizedBox(
            height: 20,
          ),
          Container(
              height: 70,
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
                              size: 25,
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
          SizedBox(
            height: 20,
          ),
          Container(
              height: 70,
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
                          size: 35,
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
          SizedBox(
            height: 20,
          ),
          Container(
              height: 70,
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
                        size: 35,
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
          SizedBox(
            height: 20,
          ),
          Container(
              height: 70,
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
                          size: 35,
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
          SizedBox(
            height: 20,
          ),
          Container(
              height: 70,
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
                          size: 35,
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
          SizedBox(
            height: 20,
          ),
          Container(
              height: 70,
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
                          size: 35,
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
          SizedBox(
            height: 70,
          )
        ],
      ),
    );
  }
}
