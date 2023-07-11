import 'package:flutter/material.dart';
import 'package:spotev/User/Formscreens/Homescreen/Home/Homepage.dart';
import 'package:spotev/User/Formscreens/Registrationscreen.dart';

import 'ForgetPassword/Recovery.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

bool _isPasswordVisible = false;
bool? isChecked = false;

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
              padding: const EdgeInsets.only(left: 50, right: 50, top: 35),
              child: Center(
                child: Container(
                  //color: Colors.amber,
                  child: Image.asset(
                    "Images/logo.png",
                    fit: BoxFit.cover,
                    height: 98,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Column(
              children: [
                Container(
                  child: const Text(
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
                      const Padding(
                        padding: EdgeInsets.only(
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
                            enabledBorder: const OutlineInputBorder(
                                borderSide: BorderSide.none),
                            filled: true,
                            fillColor: Colors.grey[350],
                            hintText: 'ENTER YOUR EMAIL',
                            prefixIcon: const Icon(
                              Icons.mail,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(left: 5.0, bottom: 3),
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
                              obscureText: !_isPasswordVisible,
                              decoration: InputDecoration(
                                enabledBorder: const OutlineInputBorder(
                                    borderSide: BorderSide.none),
                                filled: true,
                                fillColor: Colors.grey[350],
                                hintText: 'ENTER YOUR PASSWORD',
                                prefixIcon: const Icon(
                                  (Icons.lock),
                                ),
                                suffixIcon: IconButton(
                                  icon: Icon(
                                    _isPasswordVisible
                                        ? Icons.visibility
                                        : Icons.visibility_off,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      _isPasswordVisible = !_isPasswordVisible;
                                    });
                                  },
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
                                      padding: const EdgeInsets.only(
                                          right: 3.0, top: 2),
                                      child: TextButton(
                                        onPressed: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      const Recovery()));
                                        },
                                        child: const Text(
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
                              Row(
                                children: [
                                  Checkbox(
                                      checkColor: Colors.white,
                                      activeColor: Colors.red,
                                      fillColor: const MaterialStatePropertyAll(
                                          Colors.indigo),
                                      value: isChecked,
                                      onChanged: (value) {
                                        setState(() {
                                          isChecked = value;
                                        });
                                      }),
                                  const Text(
                                    "Remeber me",
                                    style: TextStyle(color: Colors.black),
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 45,
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width,
                                height: 45,
                                child: ElevatedButton(
                                  style: ButtonStyle(
                                      backgroundColor:
                                          const MaterialStatePropertyAll(
                                        Color.fromARGB(255, 99, 49, 216),
                                      ),
                                      textStyle: const MaterialStatePropertyAll(
                                        TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      shape: MaterialStatePropertyAll(
                                          RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10)))),
                                  onPressed: () {
                                    Navigator.of(context)
                                        .push(MaterialPageRoute(
                                      builder: (context) =>
                                          const HomePageUser(),
                                    ));
                                  },
                                  child: const Text("LOGIN"),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 20, top: 10),
                                child: Container(
                                  child: const Text(
                                    "or",
                                    style: TextStyle(fontSize: 19),
                                  ),
                                ),
                              ),
                              Container(
                                child: const Text(
                                  "Continue With",
                                  style: TextStyle(fontSize: 16),
                                ),
                              ),
                              const SizedBox(
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
                                                minimumSize:
                                                    const Size(165, 50)),
                                            icon: const Icon(
                                              Icons.facebook,
                                              color: Colors.blue,
                                              size: 30,
                                            ),
                                            label: const Text(
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
                                                const Text(
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
                                    const Text(
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
                                                      const Registration()));
                                        },
                                        child: const Text(
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
