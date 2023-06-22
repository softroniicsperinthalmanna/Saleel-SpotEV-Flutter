import 'package:flutter/material.dart';

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
            SizedBox(
              height: 8,
            ),
            Column(
              children: [
                Container(
                  child: Text(
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
                  child: Text(
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
                SizedBox(
                  height: 100,
                ),
                Column(
                  children: [
                    Container(
                      child: Text(
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
                    SizedBox(
                      height: 100,
                    ),
                    Column(
                      children: [
                        Container(
                          child: ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor: MaterialStatePropertyAll(
                                  Color.fromARGB(255, 99, 49, 216),
                                ),
                                minimumSize: MaterialStatePropertyAll(
                                  Size(250, 70),
                                ),
                                textStyle: MaterialStatePropertyAll(
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
                                      builder: (context) => Login()));
                            },
                            child: Text("USER"),
                          ),
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 28.0),
                          child: Container(
                            child: ElevatedButton(
                              style: ButtonStyle(
                                  backgroundColor: MaterialStatePropertyAll(
                                    Color.fromARGB(255, 99, 49, 216),
                                  ),
                                  minimumSize: MaterialStatePropertyAll(
                                    Size(250, 70),
                                  ),
                                  textStyle: MaterialStatePropertyAll(
                                    TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  shape: MaterialStatePropertyAll(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10)))),
                              onPressed: () {},
                              child: Text("STATION"),
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
