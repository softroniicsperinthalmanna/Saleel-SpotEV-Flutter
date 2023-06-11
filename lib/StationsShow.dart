import 'package:flutter/material.dart';

class StationsShow extends StatefulWidget {
  const StationsShow({super.key});

  @override
  State<StationsShow> createState() => _StationsShowState();
}

class _StationsShowState extends State<StationsShow> {
  var is_selected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(children: [
        Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 70, top: 40),
              child: TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    hintText: 'Search station..',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                        borderSide: BorderSide(
                          color: Colors.black,
                          width: 2,
                        ))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                right: 15,
                top: 45,
              ),
              child: Align(
                alignment: AlignmentDirectional.topEnd,
                child: Container(
                    width: 45,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: Colors.black, width: 1.5),
                    ),
                    child: Icon(
                      Icons.file_copy_sharp,
                      color: Colors.black,
                    )),
              ),
            )
          ],
        ),
        Container(
          height: MediaQuery.of(context).size.height,
          child: ListView.builder(
              itemCount: 6,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(top: 15, left: 13, right: 13),
                  child: Container(
                    height: 160,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                          BorderRadius.circular(30), //border corner radius
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5), //color of shadow
                          spreadRadius: 5, //spread radius
                          blurRadius: 7, // blur radius
                          offset: Offset(0, 2), // changes position of shadow
                          //first paramerter of offset is left-right
                          //second parameter is top to down
                        ),
                        //you can set more BoxShadow() here
                      ],
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0, right: 8),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'YX Vestby',
                                    style: TextStyle(fontSize: 15),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    '45km',
                                    style: TextStyle(fontSize: 15),
                                  ),
                                  SizedBox(
                                    width: 100,
                                  ),
                                  IconButton(
                                      onPressed: () {
                                        setState(() {
                                          is_selected = !is_selected;
                                        });
                                      },
                                      icon: (is_selected)
                                          ? Icon(
                                              Icons.star,
                                              color: Colors.amber,
                                            )
                                          : Icon(Icons.star_border)),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Icon(Icons.turn_right_rounded)
                                ],
                              ),
                              Text('Palakkad'),
                              // SizedBox(
                              //   height: 3,
                              // ),
                              Row(
                                children: [
                                  Text('4.0'),
                                  Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                    size: 15,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                    size: 15,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                    size: 15,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                    size: 15,
                                  ),
                                  Icon(
                                    Icons.star,
                                    size: 15,
                                  ),
                                  Text(
                                    '(20)',
                                    style: TextStyle(fontSize: 10),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Container(
                          height: 60,
                          width: MediaQuery.of(context).size.width,
                          child: Row(
                            children: [
                              Column(
                                children: [
                                  Icon(
                                    Icons.charging_station,
                                    size: 17,
                                  ),
                                  SizedBox(
                                    height: 1,
                                  ),
                                  Icon(
                                    Icons.charging_station,
                                    size: 17,
                                  ),
                                  SizedBox(
                                    height: 1,
                                  ),
                                  Icon(
                                    Icons.charging_station,
                                    size: 17,
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('CSS'),
                                  Text('Type-2'),
                                  Text('CHAdeMo')
                                ],
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(':  110 KW'),
                                  Text(':  22 KW'),
                                  Text(':  50 KW'),
                                ],
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              Column(
                                children: [
                                  Text(
                                    '3/4',
                                    style: TextStyle(color: Colors.green),
                                  ),
                                  Text(
                                    '3/3',
                                    style: TextStyle(color: Colors.red),
                                  ),
                                  Text(
                                    '0/1',
                                    style: TextStyle(color: Colors.green),
                                  )
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                );
              }),
        )
      ]),
    ));
  }
}
