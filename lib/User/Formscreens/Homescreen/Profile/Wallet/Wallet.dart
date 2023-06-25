import 'package:flutter/material.dart';

class WAllet extends StatefulWidget {
  const WAllet({super.key});

  @override
  State<WAllet> createState() => _WAlletState();
}

class _WAlletState extends State<WAllet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading: Icon(Icons.arrow_back),
        centerTitle: true,
        title: Text('Wallet'),
        toolbarHeight: 80,
        backgroundColor: Color(0xff5A5AD2),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        )),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              children: [
                Container(
                  height: 130,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                    color: Color.fromARGB(255, 38, 41, 44),
                  ),
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 30, top: 20),
                          child: Text(
                            "Balance",
                            style: TextStyle(fontSize: 25, color: Colors.white),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 30),
                              child: Text(
                                "₹ 0",
                                style: TextStyle(
                                    fontSize: 24, color: Colors.white),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 20, top: 5),
                              child: ElevatedButton(
                                style: ButtonStyle(
                                    backgroundColor: MaterialStatePropertyAll(
                                      Colors.redAccent,
                                    ),
                                    minimumSize: MaterialStatePropertyAll(
                                      Size(50, 50),
                                    ),
                                    textStyle: MaterialStatePropertyAll(
                                      TextStyle(
                                        fontSize: 25,
                                      ),
                                    ),
                                    shape: MaterialStatePropertyAll(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10)))),
                                onPressed: () {
                                  showModalBottomSheet(
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(20),
                                            topRight: Radius.circular(20))),
                                    context: context,
                                    builder: ((context) {
                                      return SingleChildScrollView(
                                        child: Container(
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                            height: 400,
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: Colors.black26),
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                            child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  SizedBox(
                                                    height: 5,
                                                  ),
                                                  Center(
                                                    child: Divider(
                                                      color: Colors.black,
                                                      thickness: 4,
                                                      endIndent: 150,
                                                      indent: 160,
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            8.0),
                                                    child: Row(
                                                      children: [
                                                        SizedBox(
                                                          height: 10,
                                                        ),
                                                        Text(
                                                          'Credits',
                                                          style: TextStyle(
                                                              fontSize: 19),
                                                        ),
                                                        SizedBox(
                                                          width: 10,
                                                        ),
                                                        CircleAvatar(
                                                            backgroundColor:
                                                                Colors.grey,
                                                            radius: 15,
                                                            child: Icon(
                                                              Icons
                                                                  .currency_rupee_sharp,
                                                              size: 20,
                                                              color:
                                                                  Colors.white,
                                                            )),
                                                        SizedBox(
                                                          width: 145,
                                                        ),
                                                        Text('1 credits=1 INR')
                                                      ],
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 10,
                                                  ),
                                                  Text(
                                                    '   Amount',
                                                    textAlign: TextAlign.start,
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            10),
                                                    child: TextField(
                                                      keyboardType:
                                                          TextInputType.number,
                                                      decoration:
                                                          InputDecoration(
                                                              hintText:
                                                                  'Enter Amount',
                                                              border:
                                                                  OutlineInputBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            10),
                                                              )),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            10),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Container(
                                                          height: 35,
                                                          width: 90,
                                                          decoration:
                                                              BoxDecoration(
                                                            border: Border.all(
                                                              color: Color(
                                                                  0xff5A5AD2),
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10),
                                                          ),
                                                          child: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Icon(
                                                                Icons
                                                                    .currency_rupee_sharp,
                                                                size: 20,
                                                              ),
                                                              Text(
                                                                '25',
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        18),
                                                              )
                                                            ],
                                                          ),
                                                        ),
                                                        Container(
                                                          height: 35,
                                                          width: 90,
                                                          decoration:
                                                              BoxDecoration(
                                                            border: Border.all(
                                                              color: Color(
                                                                  0xff5A5AD2),
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10),
                                                          ),
                                                          child: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Icon(
                                                                Icons
                                                                    .currency_rupee_sharp,
                                                                size: 20,
                                                              ),
                                                              Text(
                                                                '50',
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        18),
                                                              )
                                                            ],
                                                          ),
                                                        ),
                                                        Container(
                                                          height: 35,
                                                          width: 90,
                                                          decoration:
                                                              BoxDecoration(
                                                            border: Border.all(
                                                              color: Color(
                                                                  0xff5A5AD2),
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10),
                                                          ),
                                                          child: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Icon(
                                                                Icons
                                                                    .currency_rupee_sharp,
                                                                size: 20,
                                                              ),
                                                              Text(
                                                                '100',
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        18),
                                                              )
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            10),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Container(
                                                          height: 35,
                                                          width: 90,
                                                          decoration:
                                                              BoxDecoration(
                                                            border: Border.all(
                                                              color: Color(
                                                                  0xff5A5AD2),
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10),
                                                          ),
                                                          child: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Icon(
                                                                Icons
                                                                    .currency_rupee_sharp,
                                                                size: 20,
                                                              ),
                                                              Text(
                                                                '500',
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        18),
                                                              )
                                                            ],
                                                          ),
                                                        ),
                                                        Container(
                                                          height: 35,
                                                          width: 90,
                                                          decoration:
                                                              BoxDecoration(
                                                            border: Border.all(
                                                              color: Color(
                                                                  0xff5A5AD2),
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10),
                                                          ),
                                                          child: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Icon(
                                                                Icons
                                                                    .currency_rupee_sharp,
                                                                size: 20,
                                                              ),
                                                              Text(
                                                                '1000',
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        18),
                                                              )
                                                            ],
                                                          ),
                                                        ),
                                                        Container(
                                                          height: 35,
                                                          width: 90,
                                                          decoration:
                                                              BoxDecoration(
                                                            border: Border.all(
                                                              color: Color(
                                                                  0xff5A5AD2),
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10),
                                                          ),
                                                          child: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Icon(
                                                                Icons
                                                                    .currency_rupee_sharp,
                                                                size: 20,
                                                              ),
                                                              Text(
                                                                '2000',
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        18),
                                                              )
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            10),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Text('Total Price'),
                                                        Text('0 INR')
                                                      ],
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            10),
                                                    child: Container(
                                                      width: double.infinity,
                                                      height: 50,
                                                      child: ElevatedButton(
                                                          style: ElevatedButton
                                                              .styleFrom(
                                                                  backgroundColor:
                                                                      Color(
                                                                          0xff5A5AD2),
                                                                  foregroundColor:
                                                                      Colors
                                                                          .white,
                                                                  shape:
                                                                      RoundedRectangleBorder(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            10),
                                                                  )),
                                                          onPressed: () {},
                                                          child: Text(
                                                            'Proceed to Pay',
                                                            style: TextStyle(),
                                                          )),
                                                    ),
                                                  )
                                                ])),
                                      );
                                    }),
                                  );
                                },
                                child: Center(
                                    child: Text(
                                  "Add Credits",
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.white),
                                )),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
