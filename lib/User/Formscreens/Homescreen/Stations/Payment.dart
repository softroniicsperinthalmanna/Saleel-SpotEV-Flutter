import 'package:flutter/material.dart';
import 'package:spotev/User/Formscreens/Homescreen/Stations/ChargingSessionSummary.dart';

class Payment extends StatefulWidget {
  const Payment({super.key});

  @override
  State<Payment> createState() => _PaymentState();
}

bool isselected = false;

class _PaymentState extends State<Payment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( appBar: AppBar(
            // leading: Icon(Icons.arrow_back),
            centerTitle: true,
            title: const Text('Payment'),
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
        child: Column(children: [
         
          const Padding(
            padding: EdgeInsets.all(15),
            child: Divider(),
          ),
          const Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text("• Select your method"),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 30, top: 10),
                child: Container(
                  child: const Image(
                      image: AssetImage(
                    "Images/Googlepay.jpeg",
                  )),
                  height: 70,
                  width: 80,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40, top: 10),
                child: Container(
                  height: 50,
                  width: 80,
                  child: const Image(image: AssetImage("Images/Paytm1.png")),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 40, top: 10),
              ),
              Container(
                  height: 70,
                  width: 60,
                  child: const Image(
                      image: NetworkImage(
                          "https://pradeepaggarwal.com/wwmh/Phonepe.png")))
            ],
          ),
          const Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 20, top: 10),
                child: Text("• Select your method"),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: TextFormField(
              decoration: const InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(0),
                    ),
                  ),
                  hintText: "CARD HOLDER NAME"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 0),
            child: TextFormField(
              decoration: const InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(0),
                    ),
                  ),
                  hintText: "CARD NUMBER"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              children: [
                Container(
                  height: 50,
                  width: 150,
                  child: TextFormField(
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(0),
                          ),
                        ),
                        hintText: "EXP DATE"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Container(
                    height: 50,
                    width: 140,
                    child: TextFormField(
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(0),
                            ),
                          ),
                          hintText: "CVV"),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text("Remember card details"),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 100.0),
                child: Switch(
                  onChanged: (value) {
                    setState(() {
                      isselected = !isselected;
                    });
                  },
                  value: isselected,
                  activeColor: Colors.green,
                ),
              )
            ],
          ),SizedBox(height: 30,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: const MaterialStatePropertyAll(
                    const Color(0xff5A5AD2),
                  ),
                  minimumSize: const MaterialStatePropertyAll(
                    Size(600, 50),
                  ),
                  textStyle: const MaterialStatePropertyAll(
                    TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)))),
              onPressed: () {
 showDialog<void>(
    context: context,
    barrierDismissible: false, // user must tap button!
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text('Success',style: TextStyle(color: Colors.green),),
        content: const SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              Text('Your Booking Is Successfully Completed'),
             
            ],
          ),
        ),
        actions: <Widget>[
          TextButton(
            child: const Text('Ok'),
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => const ChargingSummary(),));
        },),
          
    
             
          ], 
          );
          
        
             
    
        },
        );
  },
  
  
   child: const Text(
                "BOOK NOW",
                style: TextStyle(fontSize: 15),
              ),
          
  ),
  ),
  ],
    )
      ),
    );
  }
}
