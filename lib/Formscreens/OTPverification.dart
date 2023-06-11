import 'package:flutter/material.dart';

class OTPverification extends StatefulWidget {
  const OTPverification({super.key});

  @override
  State<OTPverification> createState() => _OTPverificationState();
}

class _OTPverificationState extends State<OTPverification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 300,
            //child: Image.asset("Images/otp.png"),
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 175, 50, 206),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30))),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 100),
            child: Column(
              children: [
                Container(
                  child: Text(
                    "Verification Code",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Text(
                    "Send to +91987654321",
                    style: TextStyle(fontSize: 12),
                  ),
                ),
                Padding(padding: EdgeInsets.all(20)),
                Row(
                  children: [
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 40),
                        child: Container(
                          height: 55,
                          width: 55,
                          color: Colors.amber,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Container(
                        child: Container(
                          height: 55,
                          width: 55,
                          color: Color.fromARGB(255, 11, 7, 255),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Container(
                        child: Container(
                          height: 55,
                          width: 55,
                          color: Color.fromARGB(255, 255, 7, 7),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Container(
                        child: Container(
                          height: 55,
                          width: 55,
                          color: Color.fromARGB(255, 7, 255, 119),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Container(
                    child: Text("Didn't recieve an OTP ?"),
                  ),
                ),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      "Resend OTP",
                      style: TextStyle(
                        fontSize: 15,
                        decoration: TextDecoration.underline,
                      ),
                    )),
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(
                          Color.fromARGB(255, 129, 6, 160),
                        ),
                        minimumSize: MaterialStatePropertyAll(
                          Size(300, 50),
                        ),
                        textStyle: MaterialStatePropertyAll(
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                        ),
                        shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)))),
                    onPressed: () {},
                    child: Text("Submit"),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
