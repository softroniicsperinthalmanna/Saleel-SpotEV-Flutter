import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:spotev/User/Formscreens/OTPsuccessful.dart';

class OTPverification extends StatefulWidget {
  const OTPverification({super.key});

  @override
  State<OTPverification> createState() => _OTPverificationState();
}

class _OTPverificationState extends State<OTPverification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 280,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 99, 49, 216),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15, top: 40.0),
                    child: Icon(
                      Icons.arrow_back,
                      size: 30,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 10),
                  Center(
                    child: Container(
                      child: Icon(
                        Icons.mobile_friendly_rounded,
                        color: Colors.white,
                        size: 70,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Center(
                    child: Text(
                      "SENT OTP",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 100,
            ),
            Container(
                child: Column(children: [
              Text(
                "Verification Code",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "Send to +91987654321",
                style: TextStyle(fontSize: 11),
              ),
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 50.0, right: 50),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Card(
                        elevation: 5,
                        child: Container(
                          height: 55,
                          width: 55,
                          child: TextField(
                            onChanged: (value) {
                              if (value.length == 1) {
                                FocusScope.of(context).nextFocus();
                              }
                            },
                            decoration:
                                InputDecoration(border: InputBorder.none),
                            keyboardType: TextInputType.number,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(1)
                            ],
                            textAlign: TextAlign.center,
                          ),
                          color: Color.fromARGB(255, 236, 233, 233),
                        ),
                      ),
                      Card(
                        elevation: 5,
                        child: Container(
                          height: 55,
                          width: 55,
                          child: TextField(
                            onChanged: (value) {
                              if (value.length == 1) {
                                FocusScope.of(context).nextFocus();
                              }
                            },
                            decoration:
                                InputDecoration(border: InputBorder.none),
                            keyboardType: TextInputType.number,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(1)
                            ],
                            textAlign: TextAlign.center,
                          ),
                          color: Color.fromARGB(255, 236, 233, 233),
                        ),
                      ),
                      Card(
                        elevation: 5,
                        child: Container(
                          height: 55,
                          width: 55,
                          child: TextField(
                            onChanged: (value) {
                              if (value.length == 1) {
                                FocusScope.of(context).nextFocus();
                              }
                            },
                            decoration:
                                InputDecoration(border: InputBorder.none),
                            keyboardType: TextInputType.number,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(1)
                            ],
                            textAlign: TextAlign.center,
                          ),
                          color: Color.fromARGB(255, 236, 233, 233),
                        ),
                      ),
                      Card(
                        elevation: 5,
                        child: Container(
                          height: 55,
                          width: 55,
                          child: TextField(
                            onChanged: (value) {
                              if (value.length == 1) {
                                FocusScope.of(context).nextFocus();
                              }
                            },
                            decoration:
                                InputDecoration(border: InputBorder.none),
                            keyboardType: TextInputType.number,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(1)
                            ],
                            textAlign: TextAlign.center,
                          ),
                          color: Color.fromARGB(255, 236, 233, 233),
                        ),
                      ),
                    ]),
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "If You Don't Recieve Code?",
                      style: TextStyle(fontSize: 14),
                    ),
                    Text(
                      " Resend",
                      style: TextStyle(fontSize: 15, color: Colors.blue),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 50.0, left: 25, right: 25, bottom: 40),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 45,
                  child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(
                          Color.fromARGB(255, 99, 49, 216),
                        ),
                        textStyle: MaterialStatePropertyAll(
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                        shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)))),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => OTPsuccessful()));
                    },
                    child: Text("Submit"),
                  ),
                ),
              ),
            ]))
          ],
        ),
      ),
    );
  }
}
