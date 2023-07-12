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
                      color: Colors.indigo,
                    )),
                    borderRadius: const BorderRadius.only(
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
                          const Text("02 May 2021"),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                side: const BorderSide(
                                    width: 0,
                                    color: Color.fromARGB(
                                        255, 255, 59, 59))),
                            onPressed: () {
                              // Add your button's onPress functionality here
                            },
                            child: const Text(
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
                                const Icon(
                                  Icons.location_on,
                                  color: Colors.indigoAccent,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        "YX Vestby Charging Station",
                                        style: TextStyle(fontSize: 12),
                                      ),
                                      const Text(
                                        "TML Plant,Malappuram",
                                        style: TextStyle(fontSize: 12),
                                      ),
                                      const Text(
                                        "Charger A | Charging Point 1",
                                        style: TextStyle(fontSize: 12),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(top: 10.0),
                                        child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                              backgroundColor: Colors.white,
                                              side: const BorderSide(
                                                  width: 0,
                                                  color: Color.fromARGB(
                                                      255, 128, 59, 255))),
                                          onPressed: () {
                                            // Add your button's onPress functionality here
                                          },
                                          child: const Row(
                                            children: [
                                              Icon(
                                                Icons.near_me,
                                                color: Colors.blueAccent,
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
                                      side: const BorderSide(
                                          width: 0,
                                          color: Color.fromARGB(
                                              255, 59, 255, 101))),
                                  onPressed: () {
                                    showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                      actionsAlignment: MainAxisAlignment.spaceEvenly,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      title: const Center(
                          child: Column(
                        children: [
                          Text(
                            "Completed",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Are You Sure?",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w400),
                          ),
                        ],
                      )),
                      actions: <Widget>[
                        ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: const Text(
                              "Cancel",
                              style: TextStyle(color: Colors.indigo),
                            ),
                            style: TextButton.styleFrom(
                                elevation: 5,
                                minimumSize: const Size(128, 46),
                                backgroundColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(6)),
                                textStyle: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ))),
                        ElevatedButton(
                            onPressed: () {
                              // Navigator.of(context).push(MaterialPageRoute(
                              //   builder: (context) => const (),
                              // ));
                            },
                            child: const Text(
                              "Yes",
                              style: TextStyle(color: Colors.red),
                            ),
                            style: TextButton.styleFrom(
                                elevation: 5,
                                minimumSize: const Size(128, 46),
                                backgroundColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(6)),
                                textStyle: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ))),
                      ]);
                                        });
                                  }, // Add your button's onPress functionality here

                                  child: const Text(
                                    'Completed',
                                    style: TextStyle(color: Colors.green),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const Padding(
                          padding: EdgeInsets.only(
                            top: 10,
                          ),
                          child: Row(
                            children: [
                              Icon(
                                Icons.trip_origin_outlined,
                                color: Colors.indigoAccent,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 8.0),
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
                                  const Divider(),
                                  Container(
                                    height: 30,
                                    width: 60,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      border: Border.all(),
                                      color: Colors.white,
                                    ),
                                    child: const Center(
                                        child: Text(
                                      "45 mins",
                                      style: TextStyle(fontSize: 12),
                                    )),
                                  ),
                                  Positioned(
                                    left: 0,
                                    child: Container(
                                      child: const Icon(
                                        Icons.circle_sharp,
                                        color: Colors.blue,
                                        size: 10,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    right: 0,
                                    child: Container(
                                      child: const Icon(
                                        Icons.circle_sharp,
                                        color: Colors.green,
                                        size: 10,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Row(
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
                  child: const Center(
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
