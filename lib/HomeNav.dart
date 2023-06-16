import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    double _curentValue = 50;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('Images/GoogleMap.jpg'), fit: BoxFit.cover),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 70, top: 50),
            child: TextFormField(
              decoration: InputDecoration(
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
                        context: context,
                        builder: (context) {
                          return Container(
                            width: double.infinity,
                            color: Colors.white,
                            child: SingleChildScrollView(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      left: 20,
                                      top: 10,
                                    ),
                                    child: Text(
                                      'Station Status',
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Container(
                                        height: 30,
                                        width: 80,
                                        child: OutlinedButton(
                                            style: OutlinedButton.styleFrom(
                                                backgroundColor:
                                                    Colors.transparent,
                                                foregroundColor: Colors.black,
                                                side: BorderSide(
                                                  color: Color(0xff0000FF),
                                                ),
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20))),
                                            onPressed: () {},
                                            child: Text(
                                              'All',
                                            )),
                                      ),
                                      Container(
                                        height: 30,
                                        width: 80,
                                        child: OutlinedButton(
                                            style: OutlinedButton.styleFrom(
                                                backgroundColor:
                                                    Colors.transparent,
                                                foregroundColor: Colors.black,
                                                side: BorderSide(
                                                  color: Color(0xff0000FF),
                                                ),
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20))),
                                            onPressed: () {},
                                            child: Text(
                                              'Available',
                                            )),
                                      ),
                                      Container(
                                        height: 30,
                                        width: 87,
                                        child: OutlinedButton(
                                            style: OutlinedButton.styleFrom(
                                                backgroundColor:
                                                    Colors.transparent,
                                                foregroundColor: Colors.black,
                                                side: BorderSide(
                                                  color: Color(0xff0000FF),
                                                ),
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20))),
                                            onPressed: () {},
                                            child: Text(
                                              'Unavailable',
                                            )),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      left: 20,
                                      top: 10,
                                    ),
                                    child: Text(
                                      'Charger Type',
                                    ),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Container(
                                        height: 30,
                                        width: 80,
                                        child: OutlinedButton(
                                            style: OutlinedButton.styleFrom(
                                                backgroundColor:
                                                    Colors.transparent,
                                                foregroundColor: Colors.black,
                                                side: BorderSide(
                                                  color: Color(0xff0000FF),
                                                ),
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20))),
                                            onPressed: () {},
                                            child: Text(
                                              'AC',
                                            )),
                                      ),
                                      Container(
                                        height: 30,
                                        width: 80,
                                        child: OutlinedButton(
                                            style: OutlinedButton.styleFrom(
                                                backgroundColor:
                                                    Colors.transparent,
                                                foregroundColor: Colors.black,
                                                side: BorderSide(
                                                  color: Color(0xff0000FF),
                                                ),
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20))),
                                            onPressed: () {},
                                            child: Text(
                                              'DC',
                                            )),
                                      ),
                                      Container(
                                        height: 30,
                                        width: 80,
                                        child: OutlinedButton(
                                            style: OutlinedButton.styleFrom(
                                                backgroundColor:
                                                    Colors.transparent,
                                                side: BorderSide(
                                                  color: Colors.white,
                                                ),
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20))),
                                            onPressed: () {},
                                            child: Text(
                                              '',
                                            )),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      left: 20,
                                      top: 10,
                                    ),
                                    child: Text(
                                      'Connector Type',
                                    ),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Container(
                                            height: 30,
                                            width: 80,
                                            child: OutlinedButton(
                                                style: OutlinedButton.styleFrom(
                                                    backgroundColor: Colors
                                                        .transparent,
                                                    foregroundColor:
                                                        Colors.black,
                                                    side: BorderSide(
                                                      color: Color(0xff0000FF),
                                                    ),
                                                    shape:
                                                        RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        20))),
                                                onPressed: () {},
                                                child: Text(
                                                  'All',
                                                )),
                                          ),
                                          Container(
                                            height: 30,
                                            width: 80,
                                            child: OutlinedButton(
                                                style: OutlinedButton.styleFrom(
                                                    backgroundColor: Colors
                                                        .transparent,
                                                    foregroundColor:
                                                        Colors.black,
                                                    side: BorderSide(
                                                      color: Color(0xff0000FF),
                                                    ),
                                                    shape:
                                                        RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        20))),
                                                onPressed: () {},
                                                child: Text(
                                                  'CCS2',
                                                )),
                                          ),
                                          Container(
                                            height: 30,
                                            width: 80,
                                            child: OutlinedButton(
                                                style: OutlinedButton.styleFrom(
                                                    backgroundColor: Colors
                                                        .transparent,
                                                    foregroundColor:
                                                        Colors.black,
                                                    side: BorderSide(
                                                      color: Color(0xff0000FF),
                                                    ),
                                                    shape:
                                                        RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        20))),
                                                onPressed: () {},
                                                child: Text(
                                                  'CCS',
                                                )),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 7,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Container(
                                            height: 30,
                                            width: 80,
                                            child: OutlinedButton(
                                                style: OutlinedButton.styleFrom(
                                                    backgroundColor: Colors
                                                        .transparent,
                                                    foregroundColor:
                                                        Colors.black,
                                                    side: BorderSide(
                                                      color: Color(0xff0000FF),
                                                    ),
                                                    shape:
                                                        RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        20))),
                                                onPressed: () {},
                                                child: Text(
                                                  'GB/T',
                                                )),
                                          ),
                                          Container(
                                            height: 30,
                                            width: 80,
                                            child: OutlinedButton(
                                                style: OutlinedButton.styleFrom(
                                                    backgroundColor: Colors
                                                        .transparent,
                                                    foregroundColor:
                                                        Colors.black,
                                                    side: BorderSide(
                                                      color: Color(0xff0000FF),
                                                    ),
                                                    shape:
                                                        RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        20))),
                                                onPressed: () {},
                                                child: Text(
                                                  'IEC 60309',
                                                )),
                                          ),
                                          Container(
                                            height: 30,
                                            width: 80,
                                            child: OutlinedButton(
                                                style: OutlinedButton.styleFrom(
                                                    backgroundColor: Colors
                                                        .transparent,
                                                    foregroundColor:
                                                        Colors.black,
                                                    side: BorderSide(
                                                      color: Color(0xff0000FF),
                                                    ),
                                                    shape:
                                                        RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        20))),
                                                onPressed: () {},
                                                child: Text(
                                                  'CHAdeMo',
                                                )),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 7,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Container(
                                            height: 30,
                                            width: 80,
                                            child: OutlinedButton(
                                                style: OutlinedButton.styleFrom(
                                                    backgroundColor: Colors
                                                        .transparent,
                                                    foregroundColor:
                                                        Colors.black,
                                                    side: BorderSide(
                                                      color: Color(0xff0000FF),
                                                    ),
                                                    shape:
                                                        RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        20))),
                                                onPressed: () {},
                                                child: Text(
                                                  '15 AMP SWITCH',
                                                )),
                                          ),
                                          Container(
                                            height: 30,
                                            width: 80,
                                            child: OutlinedButton(
                                                style: OutlinedButton.styleFrom(
                                                    backgroundColor: Colors
                                                        .transparent,
                                                    foregroundColor:
                                                        Colors.black,
                                                    side: BorderSide(
                                                      color: Color(0xff0000FF),
                                                    ),
                                                    shape:
                                                        RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        20))),
                                                onPressed: () {},
                                                child: Text(
                                                  'Type-2',
                                                )),
                                          ),
                                          Container(
                                            height: 30,
                                            width: 80,
                                            child: OutlinedButton(
                                                style: OutlinedButton.styleFrom(
                                                    backgroundColor:
                                                        Colors.transparent,
                                                    side: BorderSide(
                                                        color: Colors.white),
                                                    shape:
                                                        RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        20))),
                                                onPressed: () {},
                                                child: Text(
                                                  '',
                                                )),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      left: 20,
                                      top: 10,
                                    ),
                                    child: Text(
                                      'Charger Type',
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text('0 km'),
                                      Slider(
                                          value: _curentValue,
                                          divisions: 10,
                                          max: 100,
                                          onChanged: (double value) {
                                            setState(() {
                                              _curentValue = value;
                                            });
                                          }),
                                      Text('100 km')
                                    ],
                                  ),
                                  Center(child: Text('50 km')),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.currency_rupee_sharp,
                                            size: 17,
                                          ),
                                          Text('0'),
                                        ],
                                      ),
                                      Slider(
                                          value: _curentValue,
                                          divisions: 10,
                                          max: 100,
                                          onChanged: (double value) {
                                            setState(() {
                                              _curentValue = value;
                                            });
                                          }),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.currency_rupee_sharp,
                                            size: 17,
                                          ),
                                          Text('1000'),
                                        ],
                                      )
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.currency_rupee,
                                        size: 17,
                                      ),
                                      Text('50 Price/Unit'),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Card(
                                        child: Container(
                                            height: 50,
                                            width: 140,
                                            child: ElevatedButton(
                                                style: ElevatedButton.styleFrom(
                                                    backgroundColor: Colors
                                                        .white,
                                                    foregroundColor:
                                                        Colors.black,
                                                    side: BorderSide(
                                                      color: Color(0xff0000FF),
                                                    ),
                                                    shape:
                                                        RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10))),
                                                onPressed: () {},
                                                child: Text('Clear Filters'))),
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Container(
                                          height: 50,
                                          width: 140,
                                          child: ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                  backgroundColor:
                                                      Color(0xff5A5AD2),
                                                  foregroundColor: Colors.white,
                                                  side: BorderSide(
                                                    color: Color(0xff0000FF),
                                                  ),
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10))),
                                              onPressed: () {},
                                              child: Text('Apply Filters')))
                                    ],
                                  )
                                ],
                              ),
                            ),
                          );
                        });
                  },
                  child: CircleAvatar(
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
          Positioned(
            top: 130,
            right: 10,
            child: CircleAvatar(
                radius: 22.5,
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.filter_none_sharp,
                  color: Colors.black,
                )),
          ),
          Align(
              alignment: Alignment.center,
              child: Icon(
                Icons.location_on,
                size: 100,
                color: Colors.red,
              )),
          Padding(
            padding: const EdgeInsets.only(right: 20, bottom: 80),
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
