import 'package:flutter/material.dart';

class Payment extends StatefulWidget {
  const Payment({super.key});

  @override
  State<Payment> createState() => _PaymentState();
}

bool isselected = false;

class _PaymentState extends State<Payment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Container(
          width: double.infinity,
          height: 120,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30)),
            color: Color.fromARGB(255, 141, 25, 145),
          ),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 50.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      right: 310,
                    ),
                    child: Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "Payment",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(15),
          child: Divider(),
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text("• Select your method"),
            ),
          ],
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 30, top: 10),
              child: Container(
                child: Image(
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
                child: Image(image: AssetImage("Images/Paytm1.png")),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40, top: 10),
            ),
            Container(
                height: 70,
                width: 60,
                child: Image(
                    image: NetworkImage(
                        "https://pradeepaggarwal.com/wwmh/Phonepe.png")))
          ],
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 10),
              child: Text("• Select your method"),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(20),
          child: TextFormField(
            decoration: InputDecoration(
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
            decoration: InputDecoration(
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
                  decoration: InputDecoration(
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
                  width: 150,
                  child: TextFormField(
                    decoration: InputDecoration(
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
            Padding(
              padding: const EdgeInsets.only(left: 20),
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
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(
            style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(
                  Color.fromARGB(255, 129, 6, 160),
                ),
                minimumSize: MaterialStatePropertyAll(
                  Size(250, 50),
                ),
                textStyle: MaterialStatePropertyAll(
                  TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)))),
            onPressed: () {},
            child: Text(
              "BOOK NOW",
              style: TextStyle(fontSize: 10),
            ),
          ),
        ),
      ]),
    );
  }
}
