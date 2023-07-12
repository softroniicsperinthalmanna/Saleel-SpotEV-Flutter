import 'package:flutter/material.dart';
import 'package:spotev/User/Formscreens/Homescreen/Stations/ChargingSessionSummary.dart';

class Payment extends StatefulWidget {
  Payment({Key? key}) : super(key: key);

  @override
  State<Payment> createState() => _PaymentState();
}
bool isselected=false;
class _PaymentState extends State<Payment> {
bool is_checked=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold (
      appBar: AppBar(centerTitle: true,
        // leading: Icon(Icons.arrow_back),
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

      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
        
              const SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: const Text('• Select your method',style:TextStyle(fontSize: 13),),
              ),
              const SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Card(
                    child: Container(
                      height: 70,
                      width: 100,
                     child: Image.asset('Images/Googlepay.png'),
                    ),
                  ),
                  Card(
                    child: Container(
                      height: 70,
                      width: 100,
                                         child: Image.asset('Images/Paytmlogo.png'),

                    ),
                  ),
                  Card(
                    child: Container(
                      height: 70,
                      width: 100,
                                          child: Image.asset('Images/Phonepay2.png'),

                    ),
                  ),
                ],
              ),
              const SizedBox(height:25,),
              Padding(
                padding: const EdgeInsets.only(left: 6),
                child: const Text('• Enter your payment details',style: TextStyle(fontSize: 13),),

              ), SizedBox(height: 6,),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration( border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(0),
                    ),
                  ),
                    hintText: 'CARD HOLDER NAME',
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.indigo,
                        width: 1.5,
                      )
                    )
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration( border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(0),
                    ),
                  ),
                    hintText: 'CARD NUMBER',
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.indigo,
                        width: 1.5,
                      )
                    )
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
               //   direction: Axis.horizontal,
               //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                     // flex: 2,
                     // width: 185,
                      child: TextField(
                        decoration: InputDecoration( border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(0),
                    ),
                  ),
                          hintText: 'EXP DATE',
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.indigo,
                              width: 1.5,
                            )
                          )
                        ),
                      ),
                    ),
                    SizedBox(width: 5,),
                    Expanded(
                      //width: 180,
                      child: TextField(
                        decoration: InputDecoration( border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(0),
                    ),
                  ),
                          hintText: 'CVV',
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.indigo,
                              width: 1.5,
                            )
                          )
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10,),
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
                  activeColor: Colors.indigo,
                ),
              )
            ],
          ),
              const SizedBox(height: 50,),
        
              Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          backgroundColor:  const Color(0xff5A5AD2),
                          foregroundColor: Colors.white
                        ),
                        onPressed: (){
                          showDialog(context: context, builder: (context){
                            return AlertDialog(
                              title: const Text('Your Booking is successfully completed'),
                              actions: [
                                TextButton(onPressed: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const ChargingSummary()));
                                }, child: const Text('Ok',style: TextStyle(color: Colors.indigo),))
                              ],
                            );
                          });
                        }, child: const Text('Book Now'))),
              )
            ],
          ),
        ),
      ),
    );
  }
}
