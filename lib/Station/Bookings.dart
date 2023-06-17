import 'package:flutter/material.dart';

import 'Tabbar1Booking.dart';
import 'Tabbar2Booking.dart';

class StationBookings extends StatefulWidget {
  const StationBookings({super.key});

  @override
  State<StationBookings> createState() => _StationBookingsState();
}

class _StationBookingsState extends State<StationBookings> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          // leading: Icon(Icons.arrow_back),
          title: Center(child: Text('Bookings')),
          toolbarHeight: 60,
          backgroundColor: Color(0xff5A5AD2),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          )),
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
                Tabbar1(),
                Tabbar2(),
              ]),
            )),
          ],
        ),
      ),
    );
  }
}
