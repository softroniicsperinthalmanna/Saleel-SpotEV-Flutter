import 'package:flutter/material.dart';

class Tabbar1 extends StatefulWidget {
  const Tabbar1({Key? key}) : super(key: key);

  @override
  State<Tabbar1> createState() => _Tabbar1State();
}

class _Tabbar1State extends State<Tabbar1> {
  DateTime _dateTime = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // SizedBox(
          //   width: 300,
          //   height: 55,
          //   child: TextField(
          //     decoration: InputDecoration(
          //         prefixIcon: Icon(
          //           Icons.search,
          //           size: 28,
          //         ),
          //         hintText: 'Search Complaints...',
          //         border: OutlineInputBorder(
          //             borderRadius: BorderRadius.circular(20),
          //             borderSide: BorderSide(
          //               color: Colors.black,
          //               width: 2,
          //             ))),
          //   ),
          // ),
          Padding(
            padding: const EdgeInsets.only(
              left: 15,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Sort by",
                  style: TextStyle(fontSize: 18),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    right: 20.0,
                  ),
                  child: IconButton(
                      onPressed: () async {
                        DateTime? _newDate = await showDatePicker(
                          context: context,
                          initialDate: _dateTime,
                          firstDate: DateTime(2020),
                          lastDate: DateTime(2050),
                          builder: (context, child) => Theme(
                              data: ThemeData.light().copyWith(
                                colorScheme: ColorScheme.fromSwatch(
                                  primarySwatch: Colors.indigo,
                                  // primaryColorDark: Colors.green,
                                  // accentColor: Color(0xff5A5AD2),
                                ),
                                dialogBackgroundColor: Colors.white,
                              ),
                              child: child!),
                        );
                        if (_newDate != null) {
                          setState(() {
                            _dateTime = _newDate;
                          });
                        }
                      },
                      icon: Icon(
                        Icons.calendar_month,
                        size: 40,
                        color: Color(0xff5A5AD2),
                      )),
                ),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(bottom: 7, left: 14, right: 30),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 40,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xff5A5AD2),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.check,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "Bydate",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Container(
                    height: 40,
                    width: 75,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child: Center(
                        child: Text(
                      "Newest",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    )),
                  ),
                ),
                Container(
                  height: 40,
                  width: 75,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: Center(
                      child: Text(
                    "Oldest",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  )),
                )
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
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
                            padding:
                                const EdgeInsets.only(right: 10, left: 10.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("02 May 2021"),
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
                          padding: const EdgeInsets.only(
                              top: 20, left: 20, right: 10),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Icon(
                                        Icons.person,
                                        color: Colors.blueAccent,
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 8.0),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 4.0),
                                              child: Text(
                                                "Soloman",
                                                style: TextStyle(fontSize: 17),
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
                                      Column(
                                        children: [
                                          CircleAvatar(
                                            radius: 21,
                                            child: CircleAvatar(
                                              backgroundColor: Colors.white,
                                              radius: 20,
                                              child: Icon(
                                                Icons.call,
                                                size: 25,
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            "Call",
                                            style: TextStyle(
                                                fontSize: 14,
                                                color: Colors.blueAccent),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 0,
                                ),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.trip_origin_rounded,
                                      color: Colors.blueAccent,
                                    ),
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
                                            borderRadius:
                                                BorderRadius.circular(5),
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
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
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
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white),
                              ),
                              Text(
                                "₹250",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      )
                    ]),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
