import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:spotev/Formscreens/ForgetPassword/NewPassword.dart';

class Verify extends StatefulWidget {
  const Verify({super.key});

  @override
  State<Verify> createState() => _RecoveryState();
}

class _RecoveryState extends State<Verify> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //leading: Icon(Icons.arrow_back),
        centerTitle: true,
        elevation: 3,
        backgroundColor: Color.fromARGB(255, 99, 49, 216),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        )),
        toolbarHeight: 70,
        title: Text(
          "Forget Password",
          style: TextStyle(fontSize: 18),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.only(top: 250.0),
            child: Text(
              "Get Your Code",
              style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Text(
              "Please enter the 4 digit code that",
              style: TextStyle(fontSize: 17),
            ),
          ),
          Text(
            "Send to your email address",
            style: TextStyle(fontSize: 17),
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
                        decoration: InputDecoration(border: InputBorder.none),
                        keyboardType: TextInputType.number,
                        inputFormatters: [LengthLimitingTextInputFormatter(1)],
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
                        decoration: InputDecoration(border: InputBorder.none),
                        keyboardType: TextInputType.number,
                        inputFormatters: [LengthLimitingTextInputFormatter(1)],
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
                        decoration: InputDecoration(border: InputBorder.none),
                        keyboardType: TextInputType.number,
                        inputFormatters: [LengthLimitingTextInputFormatter(1)],
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
                        decoration: InputDecoration(border: InputBorder.none),
                        keyboardType: TextInputType.number,
                        inputFormatters: [LengthLimitingTextInputFormatter(1)],
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
                top: 50.0, left: 18, right: 18, bottom: 40),
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
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) => NewPassword())));
                },
                child: Text("Verify and Proceed"),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
