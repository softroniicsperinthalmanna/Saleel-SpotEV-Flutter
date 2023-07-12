import 'package:flutter/material.dart';
import 'package:spotev/User/Formscreens/Homescreen/Stations/OverView.dart';
import 'package:spotev/User/Formscreens/Homescreen/Stations/Review.dart';
import 'package:spotev/User/Formscreens/Homescreen/Stations/StationPhotos.dart';

class StationDetailPage extends StatelessWidget {
  const StationDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
         appBar:  AppBar(foregroundColor: Colors.black,
          backgroundColor: Colors.white,elevation: 1,
          actions: [const Icon(Icons.search,),
          PopupMenuButton(color: Colors.indigo,
            itemBuilder: (context) => [
                  const PopupMenuItem(
                    child: Text("Share Place",style: 
                    TextStyle(color: Colors.white),),
                   
                  ),
                  
                   
                  ],)],
        ),
        body: Stack(
          children: [
            Container(
                child: Column(children: [
              const Padding(
                padding: EdgeInsets.fromLTRB(25, 30, 0, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'YX Vestby',
                      style: TextStyle(
                          color: Colors.indigo,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 40),
                      child: Text(
                        '45 KM',
                        style: TextStyle(fontSize: 18, color: Colors.indigo),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 20.0),
                      child: Text(
                        'AVAILABLE',
                        style: TextStyle(
                            fontSize: 17,
                            color: Colors.green,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(25, 10, 0, 10),
                child: Row(
                  children: [
                    Text(
                      ' 4.0',
                      style: TextStyle(fontSize: 13),
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
                      color: Colors.amber,
                      size: 15,
                    ),
                    Icon(
                      Icons.star_outline_outlined,
                      color: Colors.blueAccent,
                      size: 15,
                    ),
                    Text(
                      '(300)',
                      style: TextStyle(fontSize: 10),
                    )
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 10),
                child: Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: [
                        Icon(
                          Icons.family_restroom,
                          color: Colors.black,
                        ),
                        Text(
                          'Restroom',
                          style:
                              TextStyle(color: Color(0xff0000FF), fontSize: 10),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: [
                        Icon(
                          Icons.coffee_rounded,
                          color: Colors.black,
                        ),
                        Text(
                          'Cafe',
                          style:
                              TextStyle(color: Color(0xff0000FF), fontSize: 10),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 14,
                    ),
                    Column(
                      children: [
                        Icon(
                          Icons.local_grocery_store,
                          color: Colors.black,
                        ),
                        Text(
                          'Store',
                          style:
                              TextStyle(color: Color(0xff0000FF), fontSize: 10),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 12, 10, 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 40,
                      width: 120,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              backgroundColor: const Color(0xff0000FF),
                              foregroundColor: Colors.white),
                          onPressed: () {},
                          child: Row(
                            children: [
                              Transform.flip(
                                  flipY: true,
                                  child: const CircleAvatar(
                                    backgroundColor: Colors.black,
                                    radius: 12,
                                    child: Icon(
                                      Icons.subdirectory_arrow_right_rounded,
                                      size: 20,
                                      color: Colors.white,
                                    ),
                                  )),
                              const SizedBox(
                                width: 5,
                              ),
                              const Text('Direction'),
                            ],
                          )),
                    ),
                    Container(
                      height: 40,
                      width: 100,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              side: const BorderSide(
                                color: Color(0xff0000FF),
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              backgroundColor: const Color(0xffFFFFFF),
                              foregroundColor: Colors.black),
                          onPressed: () {},
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.near_me,
                                color: Colors.blueAccent,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                'Start',
                                style: TextStyle(color: Colors.blue),
                              ),
                            ],
                          )),
                    ),
                    Container(
                      height: 40,
                      width: 100,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              side: const BorderSide(
                                color: Color(0xff0000FF),
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              backgroundColor: const Color(0xffFFFFFF),
                              foregroundColor: Colors.black),
                          onPressed: () {},
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.call,
                                color: Colors.blue,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                'Call',
                                style: TextStyle(color: Colors.blue),
                              ),
                            ],
                          )),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: 150,
                        width: 150,
                        child: Image.asset(
                          "Images/ev5.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 150,
                        width: 150,
                        child: Image.asset(
                          "Images/ev2.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 150,
                        width: 150,
                        child: Image.asset(
                          "Images/ev15.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ])),
            Expanded(
                child: DraggableScrollableSheet(
              initialChildSize: 0.52,
              minChildSize: 0.52,
              maxChildSize: 1,
              snapSizes: [0.52,1],
              snap: true,
              builder:
                  (BuildContext context, ScrollController scrollController) {
                return Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(0),
                      topRight: Radius.circular(0),
                    ),
                  ),
                  child: SingleChildScrollView(
                    controller: scrollController,
                    child: Column(children: [
                      const TabBar(
                        indicatorColor: Colors.blueAccent,
                        labelColor: Colors.blue,
                        tabs: [
                          Tab(text: 'Overview'),
                          Tab(text: 'Reviews'),
                          Tab(text: 'Photos'),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        height: 675,
                        child: TabBarView(
                          children: [
                            const OverViewPage(),
                            ReviewPage(),
                            PhotosGridView(),
                          ],
                        ),
                      ),
                    ]),
                  ),
                );
              },
            ))
          ],
        ),
      ),
    );
  }
}
