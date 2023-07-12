import 'package:flutter/material.dart';
import 'package:spotev/User/Formscreens/Homescreen/Profile/Manage%20Ev/Select_Vehicle.dart';

class ManageEV extends StatefulWidget {
  const ManageEV({super.key});

  @override
  State<ManageEV> createState() => _ManageEVState();
}

class _ManageEVState extends State<ManageEV> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true,
        // leading: Icon(Icons.arrow_back),
        // ignore: prefer_const_constructors
        title: Text('Manage Vehicle'),
        toolbarHeight: 80,
        backgroundColor: const Color(0xff5A5AD2),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        )),
      ),
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Padding(
            padding: EdgeInsets.fromLTRB(10, 20, 0, 0),
            child: Text(
              "Add a new Vehicles",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const SelectVehicle(),
                ));
              },
              child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18.0),
                  border: Border.all(
                    color: Colors.blueAccent,
                    width: 3,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15.0),
                    child: const Image(
                      image: AssetImage("Images/addcar.webp"),
                      fit: BoxFit.cover,
                      height: 150,
                    ),
                  ),
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(10, 20, 0, 10),
            child: Text(
              "My Vehicles",
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            ),
          ),
          Card(
            elevation: 4,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    border: Border.all(color: Colors.blueAccent)),
                child: ListTile(
                  leading: Image.asset(
                    "Images/tata.png",
                    color: Colors.blueAccent,
                    height: 22,
                  ),
                  title: const Text(
                    "Tata Nexon EV",
                    style: TextStyle(color: Colors.blueAccent),
                  ),
                  trailing: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                      color: Colors.red,
                      child: Container(
                        height: 30,
                        width: 30,
                        child: const Icon(
                          Icons.delete,
                          color: Colors.white,
                        ),
                      )),
                )),
          ),
          Card(
            elevation: 4,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    border: Border.all(color: Colors.blueAccent)),
                child: ListTile(
                  leading: Image.asset(
                    "Images/tata.png",
                    color: Colors.blueAccent,
                    height: 22,
                  ),
                  title: const Text(
                    "Tata Xpress-T EV",
                    style: TextStyle(color: Colors.blueAccent),
                  ),
                  trailing: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                      color: Colors.red,
                      child: Container(
                        height: 30,
                        width: 30,
                        child: const Icon(
                          Icons.delete,
                          color: Colors.white,
                        ),
                      )),
                )),
          ),
          Card(
            elevation: 4,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    border: Border.all(color: Colors.blueAccent)),
                child: ListTile(
                  leading: Image.asset(
                    "Images/tata.png",
                    color: Colors.blueAccent,
                    height: 22,
                  ),
                  title: const Text(
                    "Hyundai Kona Electric",
                    style: TextStyle(color: Colors.blueAccent),
                  ),
                  trailing: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                      color: Colors.red,
                      child: Container(
                        height: 30,
                        width: 30,
                        child: const Icon(
                          Icons.delete,
                          color: Colors.white,
                        ),
                      )),
                )),
          ),
        ]),
      ),
    );
  }
}
