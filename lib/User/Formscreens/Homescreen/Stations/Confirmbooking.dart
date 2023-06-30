import 'package:flutter/material.dart';
import 'package:spotev/User/Formscreens/Homescreen/Stations/Payment.dart';

class Confirmbooking extends StatefulWidget {
  const Confirmbooking({super.key});

  @override
  State<Confirmbooking> createState() => _ConfirmbookingState();
}

bool? isChecked = false;

class _ConfirmbookingState extends State<Confirmbooking> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
            // leading: Icon(Icons.arrow_back),
            centerTitle: true,
            title: Text('Confirm Booking'),
            toolbarHeight: 80,
            backgroundColor: Color(0xff5A5AD2),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                )
            ),
          ),
      body: SingleChildScrollView(
        child: Column(
          children: [
           
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 45, left: 50),
                    child: Text(
                      "YX Vestby,Perinthalmanna",
                      style: TextStyle(fontSize: 25),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 50, top: 10),
                    child: Text(
                      "Sat,13 May,12:15 PM",
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 40, right: 50, top: 15),
                    child: Divider(),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 0, left: 50),
                    child: Text(
                      "Connector",
                      style: TextStyle(fontSize: 25, color: Colors.blue),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 50, top: 10),
                    child: Text(
                      "Type-2 Connector",
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 50, top: 10),
                    child: Text(
                      "50 Kw",
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 40, right: 50, top: 15),
                    child: Divider(),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 50, top: 10),
                    child: Text(
                      "Unit Price (?100/hour)",
                      style: TextStyle(fontSize: 20, color: Colors.green),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 50, top: 10),
                    child: Text(
                      "Pricing",
                      style: TextStyle(fontSize: 22, color: Colors.purple),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 50, top: 10),
                    child: Text(
                      "45 mins                                 ?80.00",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 50, top: 10),
                    child: Text(
                      "Taxes                                     ?15.20",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 50, top: 10),
                    child: Text(
                      "Taxes",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 45, top: 10),
                    child: Row(
                      children: [
                        Checkbox(
                            value: isChecked,
                            onChanged: (value) {
                              setState(() {
                                isChecked = value;
                              });
                            }),
                        Text("Use Wallet Amount"),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 110,
                          ),
                          child: Text(
                            "?0.00",
                            style: TextStyle(fontSize: 20, color: Colors.red),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 40, right: 35, top: 15),
                    child: Divider(),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 50, right: 35, top: 0),
                    child: Row(
                      children: [
                        Text(
                          "Total",
                          style: TextStyle(fontSize: 24),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 195,
                          ),
                          child: Text(
                            "?95.20",
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(50),
                      child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(
                              Color.fromARGB(255, 129, 6, 160),
                            ),
                            minimumSize: MaterialStatePropertyAll(
                              Size(300, 50),
                            ),
                            textStyle: MaterialStatePropertyAll(
                              TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                            shape: MaterialStatePropertyAll(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)))),
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Payment(),));
                        },
                        child: Text("Proceed to Pay ?95.20"),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
