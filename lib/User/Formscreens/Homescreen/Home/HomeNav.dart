import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  double _curentValue = 50;
  double _curentVal = 50;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('Images/GoogleMap.jpg'), fit: BoxFit.cover),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 70, top: 50),
            child: TextFormField(
              decoration: const InputDecoration(
                border: InputBorder.none,
                filled: true,
                fillColor: Colors.white,
                prefixIcon: Icon(
                  Icons.search,
                  size: 30,
                ),
                hintText: 'Search a location',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10, top: 55),
            child: Align(
              alignment: AlignmentDirectional.topEnd,
              child: CircleAvatar(
                radius: 24,
                backgroundColor: Colors.white,
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
                                                    backgroundColor:
                                                        Colors.transparent,
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
                                                  '25kW',
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
                  child: const CircleAvatar(
                      radius: 22.5,
                      backgroundColor: Colors.white,
                      child: Icon(
                        Icons.filter_alt,
                        color: Colors.black,
                      )),
                ),
              ),
            ),
          ),

          // Positioned(
          //   top: 130,
          //   left: 15,
          //   child: Container(
          //       height: 100,
          //       width: 180,
          //       color: Colors.red,
          //       child:DropdownButton(items: [ ], onChanged: (val){

          //       })
          //       ),
          // ),
          // insert dropdown add vehicle

          const Align(
              alignment: Alignment.center,
              child: Icon(
                Icons.location_on,
                size: 100,
                color: Colors.red,
              )),
          const Padding(
            padding: EdgeInsets.only(right: 30, bottom: 30),
            child: Align(
              alignment: AlignmentDirectional.bottomEnd,
              child: CircleAvatar(
                radius: 27,
                backgroundColor: Colors.white,
                child: CircleAvatar(
                  radius: 21.5,
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.gps_fixed,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
