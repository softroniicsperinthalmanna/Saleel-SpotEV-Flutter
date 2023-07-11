import 'package:flutter/material.dart';
import 'package:spotev/User/Formscreens/Homescreen/Stations/StationDetails.dart';

class StationsShow extends StatefulWidget {
  const StationsShow({super.key});

  @override
  State<StationsShow> createState() => _StationsShowState();
}

double _curentValue = 50;

double _curentVal = 50;

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
                    prefixIcon: const Icon(Icons.search),
                    hintText: 'Search station..',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                        borderSide: const BorderSide(
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
                child: GestureDetector(
                  onTap: () {
                    showModalBottomSheet(
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.vertical(
                                top: Radius.circular(25))),
                        isScrollControlled: true,
                        context: context,
                        builder: (context) {
                          return StatefulBuilder(builder: (BuildContext context,
                              StateSetter setState /*You can rename this!*/) {
                            return Container(
                              height: 620,
                              width: MediaQuery.of(context).size.width,
                              child: SingleChildScrollView(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Padding(
                                      padding:
                                          EdgeInsets.only(left: 20.0, top: 18),
                                      child: Text(
                                        'Station Status',
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(20.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            height: 35,
                                            width: 90,
                                            child: OutlinedButton(
                                                style: OutlinedButton.styleFrom(
                                                    backgroundColor:
                                                        const Color.fromARGB(
                                                            255, 99, 49, 216),
                                                    foregroundColor:
                                                        Colors.black,
                                                    side: const BorderSide(
                                                      color: Color(0xff0000FF),
                                                    ),
                                                    shape:
                                                        RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10))),
                                                onPressed: () {},
                                                child: const Text(
                                                  'All',
                                                  style: TextStyle(
                                                      color: Colors.white),
                                                )),
                                          ),
                                          Container(
                                            height: 35,
                                            width: 90,
                                            child: OutlinedButton(
                                                style: OutlinedButton.styleFrom(
                                                    backgroundColor: Colors
                                                        .transparent,
                                                    foregroundColor:
                                                        Colors.black,
                                                    side: const BorderSide(
                                                      color: Color(0xff0000FF),
                                                    ),
                                                    shape:
                                                        RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10))),
                                                onPressed: () {},
                                                child: const Text(
                                                  'Available',
                                                )),
                                          ),
                                          Container(
                                            height: 35,
                                            width: 105,
                                            child: OutlinedButton(
                                                style: OutlinedButton.styleFrom(
                                                    backgroundColor: Colors
                                                        .transparent,
                                                    foregroundColor:
                                                        Colors.black,
                                                    side: const BorderSide(
                                                      color: Color(0xff0000FF),
                                                    ),
                                                    shape:
                                                        RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10))),
                                                onPressed: () {},
                                                child: const Text(
                                                  'Unavailable',
                                                )),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.only(
                                        left: 20.0,
                                      ),
                                      child: Text(
                                        'Voltage',
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(20.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            height: 35,
                                            width: 90,
                                            child: OutlinedButton(
                                                style: OutlinedButton.styleFrom(
                                                    backgroundColor:
                                                        const Color.fromARGB(
                                                            255, 99, 49, 216),
                                                    foregroundColor:
                                                        Colors.black,
                                                    side: const BorderSide(
                                                      color: Color(0xff0000FF),
                                                    ),
                                                    shape:
                                                        RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10))),
                                                onPressed: () {},
                                                child: const Text(
                                                  '50 kW',
                                                  style: TextStyle(
                                                      color: Colors.white),
                                                )),
                                          ),
                                          Container(
                                            height: 35,
                                            width: 90,
                                            child: OutlinedButton(
                                                style: OutlinedButton.styleFrom(
                                                    backgroundColor: Colors
                                                        .transparent,
                                                    foregroundColor:
                                                        Colors.black,
                                                    side: const BorderSide(
                                                      color: Color(0xff0000FF),
                                                    ),
                                                    shape:
                                                        RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10))),
                                                onPressed: () {},
                                                child: const Text(
                                                  '110 kW',
                                                )),
                                          ),
                                          Container(
                                            height: 35,
                                            width: 98,
                                            child: OutlinedButton(
                                                style: OutlinedButton.styleFrom(
                                                    backgroundColor: Colors
                                                        .transparent,
                                                    foregroundColor:
                                                        Colors.black,
                                                    side: const BorderSide(
                                                      color: Color(0xff0000FF),
                                                    ),
                                                    shape:
                                                        RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10))),
                                                onPressed: () {},
                                                child: const Text(
                                                  '25 kW',
                                                )),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.only(
                                        left: 20.0,
                                      ),
                                      child: Text(
                                        'Connector Type',
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(20.0),
                                      child: Column(
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Container(
                                                height: 35,
                                                width: 90,
                                                child: OutlinedButton(
                                                    style: OutlinedButton
                                                        .styleFrom(
                                                            backgroundColor:
                                                                Colors
                                                                    .transparent,
                                                            foregroundColor:
                                                                Colors.black,
                                                            side:
                                                                const BorderSide(
                                                              color: Color(
                                                                  0xff0000FF),
                                                            ),
                                                            shape: RoundedRectangleBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            10))),
                                                    onPressed: () {},
                                                    child: const Text(
                                                      'All',
                                                    )),
                                              ),
                                              Container(
                                                height: 35,
                                                width: 90,
                                                child: OutlinedButton(
                                                    style: OutlinedButton
                                                        .styleFrom(
                                                            backgroundColor:
                                                                Colors
                                                                    .transparent,
                                                            foregroundColor:
                                                                Colors.black,
                                                            side:
                                                                const BorderSide(
                                                              color: Color(
                                                                  0xff0000FF),
                                                            ),
                                                            shape: RoundedRectangleBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            10))),
                                                    onPressed: () {},
                                                    child: const Text(
                                                      'CCS2',
                                                    )),
                                              ),
                                              Container(
                                                height: 35,
                                                width: 98,
                                                child: OutlinedButton(
                                                    style: OutlinedButton
                                                        .styleFrom(
                                                            backgroundColor:
                                                                Colors
                                                                    .transparent,
                                                            foregroundColor:
                                                                Colors.black,
                                                            side:
                                                                const BorderSide(
                                                              color: Color(
                                                                  0xff0000FF),
                                                            ),
                                                            shape: RoundedRectangleBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            10))),
                                                    onPressed: () {},
                                                    child: const Text(
                                                      'CCS',
                                                    )),
                                              ),
                                            ],
                                          ),
                                          const SizedBox(
                                            height: 7,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Container(
                                                height: 35,
                                                width: 90,
                                                child: OutlinedButton(
                                                    style: OutlinedButton
                                                        .styleFrom(
                                                            backgroundColor:
                                                                Colors
                                                                    .transparent,
                                                            foregroundColor:
                                                                Colors.black,
                                                            side:
                                                                const BorderSide(
                                                              color: Color(
                                                                  0xff0000FF),
                                                            ),
                                                            shape: RoundedRectangleBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            10))),
                                                    onPressed: () {},
                                                    child: const Text(
                                                      'GB/T',
                                                    )),
                                              ),
                                              Container(
                                                height: 35,
                                                width: 90,
                                                child: OutlinedButton(
                                                    style: OutlinedButton
                                                        .styleFrom(
                                                            backgroundColor:
                                                                Colors
                                                                    .transparent,
                                                            foregroundColor:
                                                                Colors.black,
                                                            side:
                                                                const BorderSide(
                                                              color: Color(
                                                                  0xff0000FF),
                                                            ),
                                                            shape: RoundedRectangleBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            10))),
                                                    onPressed: () {},
                                                    child: const Text(
                                                      'IEC 60309',
                                                    )),
                                              ),
                                              Container(
                                                height: 35,
                                                width: 98,
                                                child: OutlinedButton(
                                                    style: OutlinedButton
                                                        .styleFrom(
                                                            backgroundColor:
                                                                Colors
                                                                    .transparent,
                                                            foregroundColor:
                                                                Colors.black,
                                                            side:
                                                                const BorderSide(
                                                              color: Color(
                                                                  0xff0000FF),
                                                            ),
                                                            shape: RoundedRectangleBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            10))),
                                                    onPressed: () {},
                                                    child: const Text(
                                                      'CHAdeMo',
                                                    )),
                                              ),
                                            ],
                                          ),
                                          const SizedBox(
                                            height: 7,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Container(
                                                height: 35,
                                                width: 90,
                                                child: OutlinedButton(
                                                    style: OutlinedButton
                                                        .styleFrom(
                                                            backgroundColor:
                                                                Colors
                                                                    .transparent,
                                                            foregroundColor:
                                                                Colors.black,
                                                            side:
                                                                const BorderSide(
                                                              color: Color(
                                                                  0xff0000FF),
                                                            ),
                                                            shape: RoundedRectangleBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            10))),
                                                    onPressed: () {},
                                                    child: const Text(
                                                      '15 AMP SWITCH',
                                                      style: TextStyle(
                                                        fontSize: 12,
                                                      ),
                                                    )),
                                              ),
                                              Container(
                                                height: 35,
                                                width: 90,
                                                child: OutlinedButton(
                                                    style: OutlinedButton
                                                        .styleFrom(
                                                            backgroundColor:
                                                                Colors
                                                                    .transparent,
                                                            foregroundColor:
                                                                Colors.black,
                                                            side:
                                                                const BorderSide(
                                                              color: Color(
                                                                  0xff0000FF),
                                                            ),
                                                            shape: RoundedRectangleBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            10))),
                                                    onPressed: () {},
                                                    child: const Text(
                                                      'Type-2',
                                                    )),
                                              ),
                                              Container(
                                                height: 35,
                                                width: 98,
                                                child: OutlinedButton(
                                                    style: OutlinedButton.styleFrom(
                                                        backgroundColor:
                                                            Colors.transparent,
                                                        side: const BorderSide(
                                                            color:
                                                                Colors.white),
                                                        shape: RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10))),
                                                    onPressed: () {},
                                                    child: const Text(
                                                      '',
                                                    )),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.only(left: 25.0),
                                      child: Text(
                                        'Distance',
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        const Text('0 km'),
                                        Slider(
                                            value: _curentValue,
                                            divisions: 10,
                                            max: 100,
                                            onChanged: (double value) {
                                              setState(() {
                                                _curentValue = value;
                                              });
                                            }),
                                        const Text('100 km')
                                      ],
                                    ),
                                    const Center(child: Text('50 km')),
                                    const Padding(
                                      padding: EdgeInsets.only(left: 25.0),
                                      child: Text(
                                        'Price',
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        const Row(
                                          children: [
                                            Icon(
                                              Icons.currency_rupee_sharp,
                                              size: 17,
                                            ),
                                            Text('0'),
                                          ],
                                        ),
                                        Slider(
                                            value: _curentVal,
                                            divisions: 10,
                                            max: 100,
                                            onChanged: (double value) {
                                              setState(() {
                                                _curentVal = value;
                                              });
                                            }),
                                        const Row(
                                          children: [
                                            Icon(
                                              Icons.currency_rupee_sharp,
                                              size: 17,
                                            ),
                                            Text('200'),
                                          ],
                                        )
                                      ],
                                    ),
                                    const Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.currency_rupee,
                                          size: 17,
                                        ),
                                        Text('100 Price/Unit'),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 15,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Card(
                                          child: Container(
                                              height: 50,
                                              width: 140,
                                              child: ElevatedButton(
                                                  style:
                                                      ElevatedButton.styleFrom(
                                                          elevation: 3,
                                                          shadowColor:
                                                              Colors.blue,
                                                          backgroundColor:
                                                              Colors.white,
                                                          foregroundColor:
                                                              Colors.black,
                                                          side:
                                                              const BorderSide(
                                                            color: Color(
                                                                0xff0000FF),
                                                          ),
                                                          shape: RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          10))),
                                                  onPressed: () {},
                                                  child: const Text(
                                                      'Clear Filters'))),
                                        ),
                                        const SizedBox(
                                          width: 20,
                                        ),
                                        Container(
                                            height: 50,
                                            width: 140,
                                            child: ElevatedButton(
                                                style: ElevatedButton.styleFrom(
                                                    elevation: 5,
                                                    shadowColor: Colors.blue,
                                                    backgroundColor:
                                                        const Color.fromARGB(
                                                            255, 99, 49, 216),
                                                    foregroundColor:
                                                        Colors.white,
                                                    side: const BorderSide(
                                                      color: Color(0xff0000FF),
                                                    ),
                                                    shape:
                                                        RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10))),
                                                onPressed: () {},
                                                child: const Text(
                                                    'Apply Filters')))
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    )
                                  ],
                                ),
                              ),
                            );
                          });
                        });
                  },
                  child: Container(
                    width: 45,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: Colors.indigo, width: 1.5),
                    ),
                    child: const CircleAvatar(
                        radius: 22.5,
                        backgroundColor: Colors.white,
                        child: Icon(
                          Icons.filter_alt,
                          color: Colors.indigo,
                        )),
                  ),
                ),
              ),
            )
          ],
        ),
        Container(
          height: MediaQuery.of(context).size.height,
          child: ListView.builder(
              controller: ScrollController(),
              shrinkWrap: true,
              itemCount: 6,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(top: 15, left: 13, right: 13),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const StationDetailPage(),
                      ));
                    },
                    child: Stack(children: [
                      Container(
                        height: 160,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius:
                              BorderRadius.circular(10), //border corner radius
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey
                                  .withOpacity(0.5), //color of shadow
                              spreadRadius: 5, //spread radius
                              blurRadius: 7, // blur radius
                              offset: const Offset(
                                  0, 2), // changes position of shadow
                              //first paramerter of offset is left-right
                              //second parameter is top to down
                            ),
                            //you can set more BoxShadow() here
                          ],
                        ),
                        child: Column(
                          children: [
                            const Padding(
                              padding:
                                  EdgeInsets.only(left: 8.0, right: 8, top: 20),
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
                                        Icons.star_border_outlined,
                                        color: Colors.blue,
                                        size: 15,
                                      ),
                                      Icon(
                                        Icons.star_border_outlined,
                                        color: Colors.blue,
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
                            const SizedBox(
                              height: 3,
                            ),
                            Container(
                              height: 60,
                              width: MediaQuery.of(context).size.width,
                              child: const Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(6, 0, 0, 0),
                                    child: Column(
                                      children: [
                                        Icon(
                                          Icons.charging_station,
                                          color: Colors.blue,
                                          size: 15,
                                        ),
                                        SizedBox(
                                          height: 1,
                                        ),
                                        Icon(
                                          Icons.charging_station,
                                          color: Colors.blue,
                                          size: 15,
                                        ),
                                        SizedBox(
                                          height: 1,
                                        ),
                                        Icon(
                                          Icons.charging_station,
                                          color: Colors.blue,
                                          size: 15,
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                      Positioned(
                        right: 60,
                        child: IconButton(
                            onPressed: () {
                              setState(() {
                                is_selected = !is_selected;
                              });
                            },
                            icon: (is_selected)
                                ? const Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  )
                                : const Icon(Icons.star_border)),
                      ),
                      Positioned(
                        right: 20,
                        top: 20,
                        child: Transform.flip(
                            flipY: true,
                            child: const CircleAvatar(
                              radius: 12,
                              child: Icon(
                                Icons.subdirectory_arrow_right_rounded,
                                size: 15,
                              ),
                            )),
                      )
                    ]),
                  ),
                );
              }),
        ),
      ]),
    ));
  }
}
