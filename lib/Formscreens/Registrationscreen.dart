import 'package:flutter/material.dart';

class Registration extends StatefulWidget {
  const Registration({super.key});

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 50, right: 50, top: 80),
            child: Center(
              child: Container(
                child: Text(
                  "Sign Up",
                  style: TextStyle(
                    fontSize: 35,
                    color: Color.fromARGB(255, 129, 6, 160),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 100, left: 10, right: 10),
            child: Column(
              children: [
                Container(
                  child: TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(30),
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
                SizedBox(
                  height: 50,
                ),
                Column(
                  children: [
                    Container(
                      child: TextFormField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(30),
                              ),
                            ),
                            labelText: "Password",
                            prefixIcon: Icon(Icons.password),
                            labelStyle: TextStyle(color: Colors.blue),
                            filled: true,
                            fillColor: Colors.grey[300],
                            hintText: "Enter Your Password"),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 50,
                ),
                Column(
                  children: [
                    Container(
                      child: TextFormField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(30),
                              ),
                            ),
                            labelText: "Password",
                            prefixIcon: Icon(Icons.password),
                            labelStyle: TextStyle(color: Colors.blue),
                            filled: true,
                            fillColor: Colors.grey[300],
                            hintText: "Enter Your Password"),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 50,
                ),
                Column(
                  children: [
                    Container(
                      child: TextFormField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(30),
                              ),
                            ),
                            labelText: "Password",
                            prefixIcon: Icon(Icons.password),
                            labelStyle: TextStyle(color: Colors.blue),
                            filled: true,
                            fillColor: Colors.grey[300],
                            hintText: "Enter Your Password"),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 50,
                ),
                Column(
                  children: [
                    Container(
                      child: TextFormField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(30),
                              ),
                            ),
                            labelText: "Password",
                            prefixIcon: Icon(Icons.password),
                            labelStyle: TextStyle(color: Colors.blue),
                            filled: true,
                            fillColor: Colors.grey[300],
                            hintText: "Enter Your Password"),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Container(
                      child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(
                              Color.fromARGB(255, 129, 6, 160),
                            ),
                            minimumSize: MaterialStatePropertyAll(
                              Size(400, 60),
                            ),
                            textStyle: MaterialStatePropertyAll(
                              TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.bold),
                            ),
                            shape: MaterialStatePropertyAll(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(40)))),
                        onPressed: () {},
                        child: Text("REGISTER"),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30.0, left: 90),
                      child: Container(
                        child: Row(
                          children: [
                            Text(
                              "Have an account?",
                              style: TextStyle(
                                  fontSize: 22, color: Colors.blueGrey),
                            ),
                            TextButton(
                                onPressed: () {},
                                child: Text(
                                  "Sign In",
                                  style: TextStyle(fontSize: 20),
                                ))
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
