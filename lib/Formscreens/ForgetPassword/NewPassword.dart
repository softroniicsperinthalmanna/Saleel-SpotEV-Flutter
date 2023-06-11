import 'package:flutter/material.dart';

class NewPassword extends StatefulWidget {
  const NewPassword({super.key});

  @override
  State<NewPassword> createState() => _NewPasswordState();
}

class _NewPasswordState extends State<NewPassword> {
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
              padding: const EdgeInsets.only(top: 20.0),
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
                    "Forget Password",
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
          padding: const EdgeInsets.only(top: 150.0),
          child: Text(
            "Enter New Password",
            style: TextStyle(
                fontSize: 23, fontWeight: FontWeight.bold, color: Colors.blue),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Text(
            "Your new password must be different",
            style: TextStyle(fontSize: 18),
          ),
        ),
        Text(
          "from previously used password",
          style: TextStyle(fontSize: 18),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 50),
          child: Container(
            width: 320,
            child: TextFormField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  labelText: "Email",
                  prefixIcon: Icon(Icons.password),
                  labelStyle: TextStyle(color: Colors.blue),
                  filled: true,
                  fillColor: Colors.grey[300],
                  hintText: "Enter Your Email"),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Container(
            width: 320,
            child: TextFormField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  labelText: "Email",
                  prefixIcon: Icon(Icons.password),
                  labelStyle: TextStyle(color: Colors.blue),
                  filled: true,
                  fillColor: Colors.grey[300],
                  hintText: "Enter Your Email"),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 50.0),
          child: ElevatedButton(
            style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(
                  Color.fromARGB(255, 129, 6, 160),
                ),
                minimumSize: MaterialStatePropertyAll(
                  Size(300, 50),
                ),
                textStyle: MaterialStatePropertyAll(
                  TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                ),
                shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)))),
            onPressed: () {},
            child: Text("Continue"),
          ),
        ),
      ]),
    );
  }
}
