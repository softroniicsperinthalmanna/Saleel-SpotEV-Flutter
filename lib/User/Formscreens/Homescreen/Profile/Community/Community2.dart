import 'package:flutter/material.dart';

class Community1 extends StatefulWidget {
  const Community1({super.key});

  @override
  State<Community1> createState() => _Community1State();
}

class _Community1State extends State<Community1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: CustomScrollView(slivers: [
        SliverAppBar(
            automaticallyImplyLeading: false,
            pinned: true,
            floating: true,
            expandedHeight: 150,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.elliptical(100, 120),
                  bottomRight: Radius.elliptical(50, 30)),
            ),
            //  leading: Icon(Icons.arrow_back),
            backgroundColor: const Color.fromARGB(255, 99, 49, 216),
            flexibleSpace: Container(
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const SizedBox(
                    width: 30,
                  ),
                  const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Welcome to ",
                        style: TextStyle(
                            fontSize: 19,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Our Community",
                        style: TextStyle(
                            fontSize: 17,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  const SizedBox(width: 10),
                  Image.asset(
                    "Images/Communityimg.png",
                    fit: BoxFit.cover,
                  )
                ],
              ),
            )),
        SliverList(
          delegate: SliverChildBuilderDelegate(
              childCount: 5,
              (context, index) => Padding(
                    padding: const EdgeInsets.only(left: 10.0, right: 30),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("Today"),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                border:
                                    Border.all(color: Colors.blue, width: 3),
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(15),
                                )),
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                              left: 8.0,
                                              right: 8,
                                              top: 8,
                                            ),
                                            child: Stack(children: [
                                              Image.asset("Images/Avtr1.png"),
                                              const Positioned(
                                                bottom: 0,
                                                right: 0,
                                                child: Icon(
                                                  Icons.circle,
                                                  color: Colors.green,
                                                  size: 8,
                                                ),
                                              )
                                            ]),
                                          ),
                                          const Text("Anil")
                                        ],
                                      ),
                                      Expanded(
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Column(
                                            children: [
                                              const Text(
                                                  "datLorem Ipsum is simply dummy text of the printing and typesetting d scrambled it to make a type specimen book. It has survived not only five centuries,a"),
                                              const SizedBox(
                                                height: 15,
                                              ),
                                              Row(
                                                children: [
                                                  Container(
                                                    child: Image.asset(
                                                        "Images/ola.png"),
                                                  ),
                                                  const SizedBox(
                                                    width: 12,
                                                  ),
                                                  Container(
                                                    child: Image.asset(
                                                        "Images/ola.png"),
                                                  ),
                                                ],
                                              ),
                                              const SizedBox(
                                                height: 5,
                                              ),
                                              const Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    "Replay",
                                                    style: TextStyle(
                                                        color: Colors.blue),
                                                  ),
                                                  Text("11:20 AM"),
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ]),
                    // ),
                  ),),
        ),
      ]),
    );
  }
}
