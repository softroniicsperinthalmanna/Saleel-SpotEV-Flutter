import 'package:flutter/material.dart';
import 'package:spotev/User/Formscreens/Registrationscreen.dart';

import 'ForgetPassword/Recovery.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        // width: double.infinity,
        child: SingleChildScrollView(
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.only(left: 50, right: 50, top: 40),
              child: Center(
                child: Container(
                  //color: Colors.amber,
                  child: Image.asset(
                    "Images/logo.png",
                    fit: BoxFit.cover,
                    height: 100,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Column(
              children: [
                Container(
                  child: Text(
                    "Sign In",
                    style: TextStyle(
                      fontSize: 33,
                      color: Color.fromARGB(255, 99, 49, 216),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 45, left: 10, right: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 5.0,
                        ),
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
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 5.0, bottom: 3),
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
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide.none),
                                filled: true,
                                fillColor: Colors.grey[350],
                                hintText: 'ENTER YOUR PASSWORD',
                                prefixIcon: Icon(
                                  (Icons.lock),
                                ),
                              ),
                            ),
                          ),
                          Column(
                            children: [
                              Container(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(5.0),
                                      child: TextButton(
                                        onPressed: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      const Recovery()));
                                        },
                                        child: Text(
                                          "Forget Password?",
                                          style: TextStyle(
                                            fontSize: 13,
                                            color: Color.fromARGB(
                                                255, 99, 49, 216),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 45,
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
                                  onPressed: () {},
                                  child: Text("LOGIN"),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 20, top: 10),
                                child: Container(
                                  child: Text(
                                    "or",
                                    style: TextStyle(fontSize: 19),
                                  ),
                                ),
                              ),
                              Container(
                                child: Text(
                                  "Continue With",
                                  style: TextStyle(fontSize: 16),
                                ),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        child: ElevatedButton.icon(
                                            onPressed: () {},
                                            style: ElevatedButton.styleFrom(
                                                backgroundColor: Colors.white,
                                                minimumSize: Size(165, 50)),
                                            icon: Icon(
                                              Icons.facebook,
                                              color: Colors.blue,
                                              size: 30,
                                            ),
                                            label: Text(
                                              "FACEBOOK",
                                              style: TextStyle(
                                                  color: Colors.black),
                                            )),
                                      ),
                                      Container(
                                        height: 50,
                                        width: 165,
                                        child: ElevatedButton(
                                            onPressed: () {},
                                            child: Row(
                                              children: [
                                                Image.asset(
                                                  "Images/Googlee.png",
                                                  fit: BoxFit.cover,
                                                  height: 30,
                                                ),
                                                Text(
                                                  "Google",
                                                  style: TextStyle(
                                                      fontSize: 17,
                                                      color: Colors.black),
                                                ),
                                              ],
                                            ),
                                            style: ElevatedButton.styleFrom(
                                              backgroundColor: Colors.white,
                                            )),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                              Container(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Don't have an account?",
                                      style: TextStyle(
                                          fontSize: 14, color: Colors.blueGrey),
                                    ),
                                    TextButton(
                                        onPressed: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      Registration()));
                                        },
                                        child: Text(
                                          "Sign Up",
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
                  ),
                )
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
