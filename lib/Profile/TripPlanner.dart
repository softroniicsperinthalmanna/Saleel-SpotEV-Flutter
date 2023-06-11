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
        body: Column(children: [
      Container(
        width: double.infinity,
        height: 600,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("Images/GoogleMap.jpg"),
            fit: BoxFit.cover,
          ),
          color: Colors.cyan,
        ),
      ),
      Container(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Text(
              "Trip Planner",
              style: TextStyle(fontSize: 25),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Text(
                "Experiance woory-free road trips by relying on our convenient charging station to tackle anyrange anxiety on your next adventure"),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: TextFormField(
                decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: 'Enter Starting Point',
                    prefixIcon: Icon(Icons.start))),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
                decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: 'Enter Destination',
                    prefixIcon: Icon(Icons.start))),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 330, top: 15),
            child: ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(
                    Color.fromARGB(255, 129, 6, 160),
                  ),
                  minimumSize: MaterialStatePropertyAll(
                    Size(60, 40),
                  ),
                  textStyle: MaterialStatePropertyAll(
                    TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)))),
              onPressed: () {},
              child: Text("Next"),
            ),
          ),
        ]),
      ),
    ]));
  }
}
