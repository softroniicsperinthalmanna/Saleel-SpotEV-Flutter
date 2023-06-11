import 'package:flutter/material.dart';

class ManageEV extends StatefulWidget {
  const ManageEV({super.key});

  @override
  State<ManageEV> createState() => _ManageEVState();
}

class _ManageEVState extends State<ManageEV> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            "Manage Ev",
            style: TextStyle(fontSize: 22),
          ),
        ),
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Padding(
          padding: const EdgeInsets.only(left: 55, top: 50),
          child: Text(
            "My Vehicles",
            style: TextStyle(fontSize: 25),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Center(
          child: Container(
            width: 300,
            height: 100,
            color: Color.fromARGB(255, 169, 228, 171),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(30),
                  child: Image(
                    image: AssetImage("Images/tata.jpg"),
                    fit: BoxFit.cover,
                    width: 35,
                    height: 25,
                  ),
                ),
                Text(
                  "Tata Nexon EV",
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 55, top: 50),
          child: Text(
            "Add a new Vehicles",
            style: TextStyle(fontSize: 25),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Center(
          child: Container(
            width: 300,
            height: 150,
            color: Color.fromARGB(255, 169, 228, 171),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(0),
                  child: Image(
                    image: AssetImage("Images/addcar.webp"),
                    fit: BoxFit.cover,
                    width: 300,
                  ),
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
