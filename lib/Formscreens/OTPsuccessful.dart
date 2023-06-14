import 'package:flutter/material.dart';

class OTPsuccessful extends StatefulWidget {
  const OTPsuccessful({super.key});

  @override
  State<OTPsuccessful> createState() => _OTPsuccessfulState();
}

class _OTPsuccessfulState extends State<OTPsuccessful> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 250),
              child: Center(
                child: Container(
                  width: 150,
                  child: Image.asset("Images/Successful.png"),
                ),
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 10)),
            Text(
              "Successful",
              style: TextStyle(fontSize: 22),
            ),
            Padding(padding: EdgeInsets.all(5)),
            Text(
              "Your mobile number has been",
              style: TextStyle(fontSize: 16),
            ),
            Text(
              "Successfully Verified",
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(
              height: 50,
            )
          ],
        ),
      ),
    );
  }
}
