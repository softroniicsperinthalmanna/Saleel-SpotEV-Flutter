import 'package:flutter/material.dart';

class PaymentHistoryStation extends StatefulWidget {
  const PaymentHistoryStation({super.key});

  @override
  State<PaymentHistoryStation> createState() => _PaymentHistoryStationState();
}

class _PaymentHistoryStationState extends State<PaymentHistoryStation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Payment History'),
        toolbarHeight: 80,
        backgroundColor: const Color(0xff5A5AD2),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        )),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 100,
            ),
            const Text(
              " ₹ 560.00",
              style: TextStyle(fontSize: 40),
            ),
            const SizedBox(height: 10),
            const Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(
                    height: 40,
                    image: AssetImage(
                      "Images/Checkmark.png",
                    ),
                  ),
                  Text(
                    "  Completed",
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
            ),
            const Divider(
              thickness: 1.5,
              indent: 110,
              endIndent: 110,
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "May 3,2023 07:22 PM",
              style: TextStyle(fontSize: 15),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 70, 20, 10),
              child: Card(elevation: 6,shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(10)),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.indigo,width: 2 ),
                      borderRadius: BorderRadius.circular(10)),
                  child: const Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Payment ID",
                          style: TextStyle(fontSize: 21),
                        ),
                        Text(
                          "#689214",
                          style: TextStyle(fontSize: 20),
                        ),
                      
                        Padding(
                          padding: EdgeInsets.only(left: 8, top: 10),
                          child: Text(
                            "From:Roshan",
                            style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10,top: 5),
                          child: Text(
                            "Vestby@gmail.com",
                            style: TextStyle(fontSize: 15),
                          ),
                          
                        // ), 
                        // Padding(
                        //   padding: EdgeInsets.all(8.0),
                        //   child: Text(
                        //     "To:YXVestby",
                        //     style: TextStyle(fontSize: 18),
                        //   ),
                        // ),
                        // Padding(
                        //   padding: EdgeInsets.only(left: 8),
                        //   child: Text(
                        //     "Vestby@gmail.com",
                        //     style: TextStyle(fontSize: 18),
                        //   ),
                        ), Padding(
padding: EdgeInsets.only(left: 11),                          child: Text(
                              "987654321",
                              style: TextStyle(fontSize: 15),
                            ),
                        ), Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          "To:YXVestby",
                          style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 8),
                        child: Text(
                          "Vestby@gmail.com",
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
