import 'package:flutter/material.dart';

import 'Tabbar_mybookings.dart';
import 'Tabbar_mybookings1.dart';

class MyBookings extends StatefulWidget {
  const MyBookings({super.key});

  @override
  State<MyBookings> createState() => _MyBookingsState();
}

class _MyBookingsState extends State<MyBookings> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: Icon(Icons.arrow_back),
          centerTitle: true,
          elevation: 0,
          toolbarHeight: 120,
          flexibleSpace: Container(
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 141, 25, 145),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  ))),
          title: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Text(
              "My Bookings",
              style: TextStyle(fontSize: 22),
            ),
          ),
        ),
        body: Column(
          children: [
            Container(
              child: TabBar(
                labelColor: Colors.black,
                labelStyle:
                    TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                tabs: [
                  Tab(text: 'All Bookings'),
                  Tab(
                    text: 'Cancelled Bookings',
                  ),
                ],
                indicatorColor: Colors.red,
                indicatorWeight: 4,
                indicatorSize: TabBarIndicatorSize.tab,
              ),
            ),
            Expanded(
                child: Container(
              child: TabBarView(children: [
                Tabbar_Mybooking(),
                Tabbar_mybookings1(),
              ]),
            )),
          ],
        ),
      ),
    );
  }
}
