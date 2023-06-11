import 'package:flutter/material.dart';

class Complaints extends StatefulWidget {
  const Complaints({super.key});

  @override
  State<Complaints> createState() => _ComplaintsState();
}

class _ComplaintsState extends State<Complaints> {
  String? _Selected;

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
            "Complaints",
            style: TextStyle(fontSize: 22),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 15.0),
                child: Text("Station Name", style: TextStyle(fontSize: 23)),
              ),
              Container(
                decoration: BoxDecoration(border: Border.all()),
                child: DropdownButtonFormField<String>(
                  value: _Selected,
                  //elevation: 2,
                  style: TextStyle(color: Colors.black, fontSize: 18),
                  items: <String>[
                    'YXVestby',
                    'Chargeby',
                    'Voltby',
                    'ELEctro',
                    'EV charge',
                    'VRmall kottayam',
                    'Zeon international',
                  ].map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  hint: Text(
                    "Please Select a Station",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  ),
                  onChanged: (value) {
                    setState(() {
                      _Selected = value;
                    });
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 18.0, bottom: 15),
                child: Text("Complaint Type", style: TextStyle(fontSize: 18)),
              ),
              Row(
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: Text("Charger faulty"),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black54,
                      shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(10),
                      ),
                      side: BorderSide(width: 1, color: Colors.blue),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 18.0),
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text("Slow Charging"),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black54,
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(10),
                        ),
                        side: BorderSide(width: 1, color: Colors.blue),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: Text("Network Issue"),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black54,
                      shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(10),
                      ),
                      side: BorderSide(width: 1, color: Colors.blue),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 18.0),
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text("Voltage fluctuations"),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black54,
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(10),
                        ),
                        side: BorderSide(width: 1, color: Colors.blue),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                decoration: BoxDecoration(border: Border.all()),
                child: DropdownButtonFormField<String>(
                  value: _Selected,
                  //elevation: 2,
                  style: TextStyle(color: Colors.black, fontSize: 18),
                  items: <String>[
                    'Charger Faulty',
                    'Slow Charging',
                    'Network Issue',
                    'Voltage Flactuations',
                    'Slow Charging1',
                    'Slow Charging2',
                    'Slow Charging3',
                  ].map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  hint: Text(
                    "More Complaints",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  ),
                  onChanged: (value1) {
                    setState(() {
                      _Selected = value1;
                    });
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: TextFormField(
                  decoration: InputDecoration(
                      border: UnderlineInputBorder(),
                      hintText: "Write Short Discription "),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 58.0),
                child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(
                        Color.fromARGB(255, 129, 6, 160),
                      ),
                      minimumSize: MaterialStatePropertyAll(
                        Size(400, 60),
                      ),
                      textStyle: MaterialStatePropertyAll(
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)))),
                  onPressed: () {},
                  child: Text("Raise a Complaint"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
