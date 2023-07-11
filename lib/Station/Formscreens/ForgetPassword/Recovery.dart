import 'package:flutter/material.dart';
import 'package:spotev/Station/Formscreens/ForgetPassword/Verify.dart';


class RecoveryStation extends StatefulWidget {
  const RecoveryStation({super.key});

  @override
  State<RecoveryStation> createState() => _RecoveryStationState();
}

class _RecoveryStationState extends State<RecoveryStation> {
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
          const SizedBox(height: 200),
          const Text(
            "Mail Address Here",
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.blue),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "Please Enter Your Email Address",
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
          ),
          const Text(
            "To Recieve a Verification Code",
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: Card(
                  elevation: 10,
                  color: Colors.black,
                  child: TextFormField(
                    decoration: InputDecoration(
                      enabledBorder:
                          const OutlineInputBorder(borderSide: BorderSide.none),
                      filled: true,
                      fillColor: Colors.grey[350],
                      hintText: 'ENTER YOUR EMAIL',
                      prefixIcon: const Icon(
                        Icons.mail,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 45,
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 45,
              child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: const MaterialStatePropertyAll(
                      Color.fromARGB(255, 99, 49, 216),
                    ),
                    textStyle: const MaterialStatePropertyAll(
                      TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)))),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const VerifyStation()));
                },
                child: const Text("Recover Password"),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
