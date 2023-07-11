import 'package:flutter/material.dart';

class OTPsuccessfulStation extends StatefulWidget {
  const OTPsuccessfulStation({super.key});

  @override
  State<OTPsuccessfulStation> createState() => _OTPsuccessfulStationState();
}

class _OTPsuccessfulStationState extends State<OTPsuccessfulStation> {
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
            const Padding(padding: EdgeInsets.only(top: 10)),
            const Text(
              "Successful",
              style: TextStyle(fontSize: 22),
            ),
            const Padding(padding: EdgeInsets.all(5)),
            const Text(
              "Your mobile number has been",
              style: TextStyle(fontSize: 16),
            ),
            const Text(
              "Successfully Verified",
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(
              height: 50,
            )
          ],
        ),
      ),
    );
  }
}
