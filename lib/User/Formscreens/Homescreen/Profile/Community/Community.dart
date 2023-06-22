import 'package:flutter/material.dart';

import 'Community2.dart';

class Community extends StatefulWidget {
  const Community({super.key});

  @override
  State<Community> createState() => _CommunityState();
}

class _CommunityState extends State<Community> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomAppBar(
          color: Colors.red,
        ),
        body: SingleChildScrollView(
            child: Column(children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(),
            child: Stack(children: [
              Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Stack(
                  children: [
                    Positioned(
                      top: 200,
                      child: Container(
                        height: 300,
                        width: 200,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 99, 49, 216),
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(450),
                                bottomRight: Radius.circular(150))),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Container(
                        height: 180,
                        width: 240,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 99, 49, 216),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(650),
                                bottomLeft: Radius.circular(10))),
                      ),
                    ),
                    Community1(),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Row(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width,
                            child: Card(
                              elevation: 10,
                              margin: EdgeInsets.only(
                                  left: 10, right: 10, bottom: 8),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: TextFormField(
                                textAlignVertical: TextAlignVertical.center,
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(15)),
                                    hintText: "Type a message",
                                    prefixIcon: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: CircleAvatar(
                                        backgroundColor:
                                            Color.fromARGB(255, 129, 6, 160),
                                        child: Icon(
                                          Icons.camera_alt_outlined,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                    contentPadding: EdgeInsets.all(5)),
                                onTap: () {},
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ]),
          ),
        ])));
  }
}
