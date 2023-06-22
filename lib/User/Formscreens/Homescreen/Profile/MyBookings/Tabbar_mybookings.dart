import 'package:flutter/material.dart';

class Tabbar_Mybooking extends StatefulWidget {
  const Tabbar_Mybooking({super.key});

  @override
  State<Tabbar_Mybooking> createState() => _Tabbar_MybookingState();
}

class _Tabbar_MybookingState extends State<Tabbar_Mybooking> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: 6,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(children: [
                Container(
                  decoration: BoxDecoration(
                    border: (Border.all(
                      width: 0.3,
                      color: Colors.blueAccent,
                    )),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10)),
                    color: Colors.white,
                  ),
                  width: double.infinity,
                  height: 50,
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 10, left: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("02 May 2021"),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                side: BorderSide(
                                    width: 0,
                                    color: const Color.fromARGB(
                                        255, 255, 59, 59))),
                            onPressed: () {
                              // Add your button's onPress functionality here
                            },
                            child: Text(
                              'Cancel',
                              style: TextStyle(color: Colors.red),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    border: (Border.all(
                      width: 0.3,
                    )),
                    color: Colors.white,
                  ),
                  child: Container(
                    padding:
                        const EdgeInsets.only(top: 20, left: 20, right: 10),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Icon(Icons.map_outlined),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "YX Vestby Charging Station",
                                        style: TextStyle(fontSize: 12),
                                      ),
                                      Text(
                                        "TML Plant,Malappuram",
                                        style: TextStyle(fontSize: 12),
                                      ),
                                      Text(
                                        "Charger A | Charging Point 1",
                                        style: TextStyle(fontSize: 12),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(top: 10.0),
                                        child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                              backgroundColor: Colors.white,
                                              side: BorderSide(
                                                  width: 0,
                                                  color: Color.fromARGB(
                                                      255, 128, 59, 255))),
                                          onPressed: () {
                                            // Add your button's onPress functionality here
                                          },
                                          child: Row(
                                            children: [
                                              Icon(
                                                Icons.navigate_next,
                                                color: Colors.black,
                                              ),
                                              Text(
                                                'Navigate',
                                                style: TextStyle(
                                                    color: Colors.blue),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.white,
                                      side: BorderSide(
                                          width: 0,
                                          color: Color.fromARGB(
                                              255, 59, 255, 101))),
                                  onPressed: () {
                                    showDialog(
                                        context: context,
                                        builder: (context) {
                                          return AlertDialog(
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(15.0),
                                              ),
                                              buttonPadding:
                                                  EdgeInsets.only(right: 100),
                                              title: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Text("Are You Sure?"),
                                                ],
                                              ),
                                              actions: [
                                                ElevatedButton(
                                                  onPressed: () {
                                                    Navigator.pop(context);
                                                  },
                                                  child: Text("Back"),
                                                  style:
                                                      ElevatedButton.styleFrom(
                                                    backgroundColor:
                                                        Colors.black54,
                                                    shape:
                                                        new RoundedRectangleBorder(
                                                      borderRadius:
                                                          new BorderRadius
                                                              .circular(20),
                                                    ),
                                                    side: BorderSide(
                                                        width: 1,
                                                        color: Colors.blue),
                                                  ),
                                                ),
                                                ElevatedButton(
                                                  onPressed: () {},
                                                  child: Text("Ok"),
                                                  style:
                                                      ElevatedButton.styleFrom(
                                                    backgroundColor:
                                                        Colors.black54,
                                                    shape:
                                                        new RoundedRectangleBorder(
                                                      borderRadius:
                                                          new BorderRadius
                                                              .circular(20),
                                                    ),
                                                    side: BorderSide(
                                                        width: 1,
                                                        color: Colors.blue),
                                                  ),
                                                )
                                              ]);
                                        });
                                  }, // Add your button's onPress functionality here

                                  child: Text(
                                    'Completed',
                                    style: TextStyle(color: Colors.green),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 10,
                          ),
                          child: Row(
                            children: [
                              Icon(Icons.map_outlined),
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Text("DC Type 1"),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              right: 38, top: 20, bottom: 10),
                          child: Column(
                            children: [
                              Stack(
                                alignment: AlignmentDirectional.center,
                                children: [
                                  Divider(),
                                  Container(
                                    height: 30,
                                    width: 60,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      border: Border.all(),
                                      color: Colors.white,
                                    ),
                                    child: Center(
                                        child: Text(
                                      "45 mins",
                                      style: TextStyle(fontSize: 12),
                                    )),
                                  ),
                                  Positioned(
                                    left: 0,
                                    child: Container(
                                      child: Icon(
                                        Icons.circle_sharp,
                                        color: Colors.blue,
                                        size: 10,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    right: 0,
                                    child: Container(
                                      child: Icon(
                                        Icons.circle_sharp,
                                        color: Colors.green,
                                        size: 10,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text('1:15PM'),
                                      Text('12 May 2023')
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text('2:00PM'),
                                      Text('12 May 2023')
                                    ],
                                  ),
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    border: (Border.all(
                      width: 0.3,
                    )),
                    color: Colors.green,
                  ),
                  width: double.infinity,
                  height: 50,
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "Session Charge",
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                        Text(
                          "₹250",
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                )
              ]),
            );
          }),
    );
  }
}
