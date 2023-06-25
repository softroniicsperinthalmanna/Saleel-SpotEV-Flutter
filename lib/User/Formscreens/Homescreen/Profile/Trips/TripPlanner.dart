import 'package:flutter/material.dart';

class Trip extends StatefulWidget {
  const Trip({super.key});

  @override
  State<Trip> createState() => _TripState();
}

class _TripState extends State<Trip> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("Images/GoogleMap.jpg"),
            fit: BoxFit.cover,
          ),
          color: Colors.cyan,
        ),
      ),
      DraggableScrollableSheet(
          initialChildSize: .5,
          maxChildSize: .5,
          minChildSize: .5,
          builder: (BuildContext context, ScrollController scrollController) {
            return Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30))),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  child: ListView(controller: scrollController, children: [
                    Text(
                      "Trip Planner",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Experiance woory-free road trips by relying on our convenient charging station to tackle anyrange anxiety on your next adventure",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w300,
                              fontStyle: FontStyle.normal),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 5.0, vertical: 12),
                      child: TextFormField(
                          decoration: const InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0)),
                              ),
                              labelText: 'Enter Starting Point',
                              prefixIcon: Icon(
                                Icons.trip_origin_rounded,
                                size: 20,
                                color: Colors.red,
                              ))),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 5.0, vertical: 12),
                      child: TextFormField(
                          decoration: const InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0)),
                              ),
                              labelText: 'Enter Your Destination',
                              prefixIcon: Icon(
                                Icons.location_on_outlined,
                                size: 20,
                                color: Colors.green,
                              ))),
                    ),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ElevatedButton(
                                onPressed: () {},
                                child: Text("Next"),
                                style: ElevatedButton.styleFrom(
                                    minimumSize: Size(120, 0),
                                    backgroundColor: Color(
                                        0xff5A5AD2), //background color of button
                                    side: BorderSide(
                                        color: Colors
                                            .brown), //border width and color
                                    elevation: 1, //elevation of button
                                    shape: RoundedRectangleBorder(
                                        //to set border radius to button
                                        borderRadius:
                                            BorderRadius.circular(15)),
                                    padding: EdgeInsets.all(20))),
                          )
                        ])
                  ]),
                ),
              ),
            );
          })
    ]));
  }
}
