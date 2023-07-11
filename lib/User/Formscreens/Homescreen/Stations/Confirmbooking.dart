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
            title: const Text('Confirm Booking'),
            toolbarHeight: 80,
            backgroundColor: const Color(0xff5A5AD2),
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                )
            ),
          ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Column(
            children: [
             const SizedBox(height: 30,),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "YX Vestby,Perinthalmanna",
                      style: TextStyle(fontSize: 20),
                    ),const SizedBox(height: 10,),
                    const Text(
                      "Sat,13 May,12:15 PM",
                      style: TextStyle(fontSize: 16),
                    ),const SizedBox(height: 10,),
                    const Divider(),
                    const Text(
                      "Connector",
                      style: TextStyle(fontSize: 20, color: Colors.indigo),
                    ),const SizedBox(height: 10,),
                    const Text(
                      "Type-2 Connector",
                      style: TextStyle(fontSize: 18),
                    ),const SizedBox(height: 5,),
                    const Text(
                      "50 Kw",
                      style: TextStyle(fontSize: 18),
                    ),
                    const Divider(),
                    const SizedBox(height: 10,),
                    const Text(
                      "Unit Price ( ₹100/hour)",
                      style: TextStyle(fontSize: 17, color: Colors.green),
                    ),const SizedBox(height: 10,),
                    const Text(
                      "Pricing",
                      style: TextStyle(fontSize: 20, color: Colors.redAccent),
                    ),const SizedBox(height: 10,),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 2),
                      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "45 mins ",
                            style: TextStyle(fontSize: 20),
                          ),
                          Text(
                            "₹80.00",
                            style: TextStyle(fontSize: 18),),
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 2),
                      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Taxes",
                            style: TextStyle(fontSize: 20),
                          ),Text(
                            "₹15.20",
                            style: TextStyle(fontSize: 18),),
                        ],
                      ),
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(                      mainAxisAlignment: MainAxisAlignment.spaceBetween,

                          children: [
                            Checkbox(
                                value: isChecked,
                                onChanged: (value) {
                                  setState(() {
                                    isChecked = value;
                                  });
                                }),const Text("Use Wallet Amount"),
                          ],
                        ),
                        
                        const Text(
                          "₹0.00",
                          style: TextStyle(fontSize: 18, color: Colors.red),
                        ),
                      ],
                    ),
                    const Divider(),
                    const Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Total",
                          style: TextStyle(fontSize: 20),
                        ),
                        Text(
                          "₹95.20",
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),const SizedBox(height: 40,),
                    const SizedBox(height: 30,),
                    Center(
                      child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor: const MaterialStatePropertyAll(
                              Color(0xff5A5AD2),
                            ),
                            minimumSize: const MaterialStatePropertyAll(
                              Size(700, 50),
                            ),
                            textStyle: const MaterialStatePropertyAll(
                              TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                            shape: MaterialStatePropertyAll(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)))),
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) =>  Payment(),));
                        },
                        child: const Text("Proceed to Pay ₹95.20"),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
