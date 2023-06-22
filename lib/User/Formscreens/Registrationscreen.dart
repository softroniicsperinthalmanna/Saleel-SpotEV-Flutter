import 'package:flutter/material.dart';
import 'package:spotev/User/Formscreens/Loginscreen.dart';
import 'package:spotev/User/Formscreens/OTPverification.dart';

class Registration extends StatefulWidget {
  const Registration({super.key});

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        // width: double.infinity,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(18, 18, 18, 0),
            child: Column(children: [
              SizedBox(
                height: 20,
              ),
              Column(
                children: [
                  Container(
                    child: Text(
                      "Sign Up",
                      style: TextStyle(
                        fontSize: 33,
                        color: Color.fromARGB(255, 99, 49, 216),
                      ),
                    ),
                  ),
                  SizedBox(height: 50),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 5.0),
                        child: Text(
                          'User Name',
                          style: TextStyle(
                            fontSize: 15,
                            color: Color.fromARGB(255, 99, 49, 216),
                          ),
                        ),
                      ),
                      Card(
                        elevation: 10,
                        color: Colors.black,
                        child: TextFormField(
                          decoration: InputDecoration(
                            enabledBorder:
                                OutlineInputBorder(borderSide: BorderSide.none),
                            filled: true,
                            fillColor: Colors.grey[350],
                            hintText: 'ENTER YOUR NAME',
                            prefixIcon: Icon(
                              Icons.person_outline,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.only(left: 5.0, bottom: 3),
                        child: Text(
                          'Mobile Number',
                          style: TextStyle(
                            fontSize: 15,
                            color: Color.fromARGB(255, 99, 49, 216),
                          ),
                        ),
                      ),
                      Card(
                        elevation: 10,
                        color: Colors.black,
                        child: TextFormField(
                          decoration: InputDecoration(
                            enabledBorder:
                                OutlineInputBorder(borderSide: BorderSide.none),
                            filled: true,
                            fillColor: Colors.grey[350],
                            hintText: 'ENTER YOUR NUMBER',
                            prefixIcon: Icon(
                              Icons.call,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.only(left: 5.0, top: 3),
                        child: Text(
                          'Email',
                          style: TextStyle(
                            fontSize: 15,
                            color: Color.fromARGB(255, 99, 49, 216),
                          ),
                        ),
                      ),
                      Card(
                        elevation: 10,
                        color: Colors.black,
                        child: TextFormField(
                          decoration: InputDecoration(
                            enabledBorder:
                                OutlineInputBorder(borderSide: BorderSide.none),
                            filled: true,
                            fillColor: Colors.grey[350],
                            hintText: 'ENTER YOUR EMAIL',
                            prefixIcon: Icon(
                              Icons.mail,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 5.0, top: 3),
                        child: Text(
                          'Password',
                          style: TextStyle(
                            fontSize: 15,
                            color: Color.fromARGB(255, 99, 49, 216),
                          ),
                        ),
                      ),
                      Card(
                        elevation: 10,
                        color: Colors.black,
                        child: TextFormField(
                          decoration: InputDecoration(
                            enabledBorder:
                                OutlineInputBorder(borderSide: BorderSide.none),
                            filled: true,
                            fillColor: Colors.grey[350],
                            hintText: 'ENTER YOUR PASSWORD',
                            prefixIcon: Icon(
                              Icons.lock,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 5.0, bottom: 3),
                            child: Text(
                              'Confirm Password',
                              style: TextStyle(
                                fontSize: 15,
                                color: Color.fromARGB(255, 99, 49, 216),
                              ),
                            ),
                          ),
                          Card(
                            elevation: 10,
                            color: Colors.black,
                            child: TextFormField(
                              decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide.none),
                                filled: true,
                                fillColor: Colors.grey[350],
                                hintText: 'CONFIRM PASSWORD',
                                prefixIcon: Icon(
                                  (Icons.lock),
                                ),
                              ),
                            ),
                          ),
                          Column(
                            children: [
                              SizedBox(
                                height: 40,
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width,
                                height: 45,
                                child: ElevatedButton(
                                  style: ButtonStyle(
                                      backgroundColor: MaterialStatePropertyAll(
                                        Color.fromARGB(255, 99, 49, 216),
                                      ),
                                      textStyle: MaterialStatePropertyAll(
                                        TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      shape: MaterialStatePropertyAll(
                                          RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10)))),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                OTPverification()));
                                  },
                                  child: Text("Register"),
                                ),
                              ),
                              Container(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Have an account?",
                                      style: TextStyle(
                                          fontSize: 14, color: Colors.blueGrey),
                                    ),
                                    TextButton(
                                        onPressed: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      Login()));
                                        },
                                        child: Text(
                                          "Sign In",
                                          style: TextStyle(
                                            fontSize: 14,
                                            color: Color.fromARGB(
                                                255, 99, 49, 216),
                                          ),
                                        ))
                                  ],
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
