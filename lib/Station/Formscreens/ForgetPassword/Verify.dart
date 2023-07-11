import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:spotev/Station/Formscreens/ForgetPassword/NewPassword.dart';

class VerifyStation extends StatefulWidget {
  const VerifyStation({super.key});

  @override
  State<VerifyStation> createState() => _RecoveryState();
}

class _RecoveryState extends State<VerifyStation> {
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
          "Forget Password",
          style: TextStyle(fontSize: 18),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          const Padding(
            padding: EdgeInsets.only(top: 250.0),
            child: Text(
              "Get Your Code",
              style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 10),
            child: Text(
              "Please enter the 4 digit code that",
              style: TextStyle(fontSize: 17),
            ),
          ),
          const Text(
            "Send to your email address",
            style: TextStyle(fontSize: 17),
          ),
          const SizedBox(
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
                        decoration: const InputDecoration(border: InputBorder.none),
                        keyboardType: TextInputType.number,
                        inputFormatters: [LengthLimitingTextInputFormatter(1)],
                        textAlign: TextAlign.center,
                      ),
                      color: const Color.fromARGB(255, 236, 233, 233),
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
                        decoration: const InputDecoration(border: InputBorder.none),
                        keyboardType: TextInputType.number,
                        inputFormatters: [LengthLimitingTextInputFormatter(1)],
                        textAlign: TextAlign.center,
                      ),
                      color: const Color.fromARGB(255, 236, 233, 233),
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
                        decoration: const InputDecoration(border: InputBorder.none),
                        keyboardType: TextInputType.number,
                        inputFormatters: [LengthLimitingTextInputFormatter(1)],
                        textAlign: TextAlign.center,
                      ),
                      color: const Color.fromARGB(255, 236, 233, 233),
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
                        decoration: const InputDecoration(border: InputBorder.none),
                        keyboardType: TextInputType.number,
                        inputFormatters: [LengthLimitingTextInputFormatter(1)],
                        textAlign: TextAlign.center,
                      ),
                      color: const Color.fromARGB(255, 236, 233, 233),
                    ),
                  ),
                ]),
          ),
          const Padding(
            padding: EdgeInsets.all(18.0),
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
                    backgroundColor: const MaterialStatePropertyAll(
                      Color.fromARGB(255, 99, 49, 216),
                    ),
                    textStyle: const MaterialStatePropertyAll(
                      TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)))),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) => const NewPasswordStation())));
                },
                child: const Text("Verify and Proceed"),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
