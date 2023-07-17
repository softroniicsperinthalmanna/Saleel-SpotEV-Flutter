import 'package:flutter/material.dart';

class Complaints extends StatefulWidget {
  const Complaints({super.key});

  @override
  State<Complaints> createState() => _ComplaintsState();
}

class _ComplaintsState extends State<Complaints> {
  String? _selectedStation;
  String? _selectedComplaintType;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //leading: Icon(Icons.arrow_back),
        centerTitle: true,
        elevation: 3,
        backgroundColor: const Color.fromARGB(255, 99, 49, 216),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        )),
        toolbarHeight: 70,
        title: const Text(
          "Complaints",
          style: TextStyle(fontSize: 18),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(bottom: 10.0, top: 15),
                child: Text("Station Name", style: TextStyle(fontSize: 20)),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: Colors.blue, width: 1.5),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: DropdownButtonFormField<String>(
                    value: _selectedStation,
                    decoration: const InputDecoration(border: InputBorder.none),
                    style: const TextStyle(color: Colors.black, fontSize: 18),
                    items: <String>[
                      'YXVestby',
                      'Chargeby', // Ensure there's only one item with this value
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
                    hint: const Text(
                      "Please Select a Station",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                      ),
                    ),
                    onChanged: (Newvalue) {
                      setState(() {
                        _selectedStation = Newvalue;
                      });
                    },
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 30.0, bottom: 5),
                child: Text("Complaint Type", style: TextStyle(fontSize: 18)),
              ),
              Row(
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text("Charger faulty"),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 99, 49, 216),
                      shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(10),
                      ),
                      side: const BorderSide(width: 1, color: Colors.blue),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 18.0),
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text(
                        "Slow Charging",
                        style: TextStyle(
                          color: Color.fromARGB(255, 99, 49, 216),
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(10),
                        ),
                        side: const BorderSide(width: 1, color: Colors.blue),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text(
                      "Network Issue",
                      style: TextStyle(
                        color: Color.fromARGB(255, 99, 49, 216),
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(10),
                      ),
                      side: const BorderSide(width: 1, color: Colors.blue),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 18.0),
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text(
                        "Voltage fluctuations",
                        style: TextStyle(
                          color: Color.fromARGB(255, 99, 49, 216),
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(10),
                        ),
                        side: const BorderSide(width: 1, color: Colors.blue),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: Colors.blue, width: 1.5),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: DropdownButtonFormField<String>(
                      value: _selectedComplaintType,
                      decoration: const InputDecoration(border: InputBorder.none),
                      style: const TextStyle(color: Colors.black, fontSize: 18),
                      items: <String>[
                        'Inconvenient locations',
                        'Lack of compatibility',
                        'Limited parking space',
                        'High charging costs',
                        'Inaccurate charging information',
                        'Limited charging plugs',
                      ].map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                      hint: const Text(
                        "More Complaints",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                        ),
                      ),
                      onChanged: (Newvalue) {
                        setState(() {
                          _selectedComplaintType = Newvalue;
                        });
                      },
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: Container(
                  height: 100,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue, width: 1.5),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: TextFormField(
                      decoration: const InputDecoration(
                          hintMaxLines: 2,
                          border: InputBorder.none,
                          hintText:
                              "Write Short Discription \nEnter your concern here...",
                          hintStyle: TextStyle(fontSize: 12)),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 70,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 45,
                child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: const MaterialStatePropertyAll(
                        Color.fromARGB(255, 99, 49, 216),
                      ),
                      textStyle: const MaterialStatePropertyAll(
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)))),
                  onPressed: () {},
                  child: const Text("Raise a Complaint"),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
