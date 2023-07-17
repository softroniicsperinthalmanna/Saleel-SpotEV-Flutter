import 'package:flutter/material.dart';
import 'package:spotev/Station/Formscreens/Login.dart';

import 'Loginscreen.dart';

class Module extends StatelessWidget {
  const Module({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 50, right: 50, top: 120),
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
            const SizedBox(
              height: 8,
            ),
            Column(
              children: [
                Container(
                  child: const Text(
                    "Join the electric",
                    style: TextStyle(
                      fontSize: 18,
                      color: Color.fromARGB(255, 99, 49, 216),
                      fontWeight: FontWeight.bold,
                      shadows: [
                        Shadow(
                          blurRadius: 4.0,
                          color: Colors.grey,
                          offset: Offset(2.0, 2.0),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  child: const Text(
                    "rEVOLUTION",
                    style: TextStyle(
                      fontSize: 18,
                      color: Color.fromARGB(255, 99, 49, 216),
                      fontWeight: FontWeight.bold,
                      shadows: [
                        Shadow(
                          blurRadius: 4.0,
                          color: Colors.grey,
                          offset: Offset(2.0, 2.0),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 100,
                ),
                Column(
                  children: [
                    Container(
                      child: const Text(
                        "MAKE VEHICLE CHARGING EASY",
                        style: TextStyle(
                          fontSize: 20,
                          color: Color.fromARGB(255, 99, 49, 216),
                          fontWeight: FontWeight.bold,
                          shadows: [
                            Shadow(
                              blurRadius: 4.0,
                              color: Colors.grey,
                              offset: Offset(2.0, 2.0),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 100,
                    ),
                    Column(
                      children: [
                        Container(
                          child: ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor: const MaterialStatePropertyAll(
                                  Color.fromARGB(255, 99, 49, 216),
                                ),
                                minimumSize: const MaterialStatePropertyAll(
                                  Size(250, 70),
                                ),
                                textStyle: const MaterialStatePropertyAll(
                                  TextStyle(
                                      fontSize: 20,
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
                                      builder: (context) => const Login()));
                            },
                            child: const Text("USER"),
                          ),
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 28.0),
                          child: Container(
                            child: ElevatedButton(
                              style: ButtonStyle(
                                  backgroundColor: const MaterialStatePropertyAll(
                                    Color.fromARGB(255, 99, 49, 216),
                                  ),
                                  minimumSize: const MaterialStatePropertyAll(
                                    Size(250, 70),
                                  ),
                                  textStyle: const MaterialStatePropertyAll(
                                    TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  shape: MaterialStatePropertyAll(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10)))),
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(builder: (context) => const LoginScreen(),));
                              },
                              child: const Text("STATION"),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
