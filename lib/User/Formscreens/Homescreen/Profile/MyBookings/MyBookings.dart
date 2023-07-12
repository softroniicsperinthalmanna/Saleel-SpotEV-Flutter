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
          centerTitle: true,
          // leading: Icon(Icons.arrow_back),
          title: const Text('My Bookings'),
          toolbarHeight: 80,
          backgroundColor: const Color(0xff5A5AD2),
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          )),
        ),
        body: Column(
          children: [
            Container(
              child: const TabBar(
                labelColor: Colors.black,
                labelStyle:
                    TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                tabs: [
                  Tab(text: 'All Bookings'),
                  Tab(
                    text: 'Cancelled Bookings',
                  ),
                ],
                indicatorColor: Colors.indigo,
                indicatorWeight: 4,
                indicatorSize: TabBarIndicatorSize.tab,
              ),
            ),
            Expanded(
                child: Container(
              child: const TabBarView(children: [
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
