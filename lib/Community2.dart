import 'package:flutter/material.dart';

class Comminity2 extends StatefulWidget {
  const Comminity2({super.key});

  @override
  State<Comminity2> createState() => _Comminity2State();
}

class _Comminity2State extends State<Comminity2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(slivers: [
        SliverAppBar(
            pinned: true,
            floating: true,
            expandedHeight: 150,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.elliptical(100, 120),
                  bottomRight: Radius.elliptical(50, 30)),
            ),
            //  leading: Icon(Icons.arrow_back),
            backgroundColor: Color.fromARGB(255, 99, 49, 216),
            flexibleSpace: Container(
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(
                    width: 30,
                  ),
                  Column(
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
                  SizedBox(width: 10),
                  Image.asset(
                    "Images/Communityimg.png",
                    fit: BoxFit.cover,
                  )
                ],
              ),
            )),
        SliverList(
            delegate: SliverChildBuilderDelegate((context, index) =>
                Container(color: Colors.red, height: 50, width: 100))),
      ]),
    );
  }
}
