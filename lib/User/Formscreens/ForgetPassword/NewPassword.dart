import 'package:flutter/material.dart';
import 'package:spotev/User/Formscreens/Loginscreen.dart';

class NewPassword extends StatefulWidget {
  const NewPassword({super.key});

  @override
  State<NewPassword> createState() => _NewPasswordState();
}

class _NewPasswordState extends State<NewPassword> {
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
        child: Center(
          child: Column(children: [
            SizedBox(
              height: 150,
            ),
            Text(
              "Enter New Password",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 99, 49, 216),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Your new password must be different",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
            ),
            Text(
              "from previously used password",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: Card(
                  elevation: 10,
                  color: Colors.black,
                  child: TextFormField(
                    decoration: InputDecoration(
                      enabledBorder:
                          OutlineInputBorder(borderSide: BorderSide.none),
                      filled: true,
                      fillColor: Colors.grey[350],
                      hintText: 'New Password',
                      prefixIcon: Icon(
                        Icons.lock,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: Card(
                  elevation: 10,
                  color: Colors.black,
                  child: TextFormField(
                    decoration: InputDecoration(
                      enabledBorder:
                          OutlineInputBorder(borderSide: BorderSide.none),
                      filled: true,
                      fillColor: Colors.grey[350],
                      hintText: 'Confirm Password',
                      prefixIcon: Icon(
                        Icons.lock,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 45,
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 45,
                child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(
                        Color.fromARGB(255, 99, 49, 216),
                      ),
                      textStyle: MaterialStatePropertyAll(
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)))),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Login()));
                  },
                  child: Text("Continue"),
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
