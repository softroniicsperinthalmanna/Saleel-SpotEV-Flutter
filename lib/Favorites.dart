import 'package:flutter/material.dart';

class Favorites extends StatefulWidget {
  const Favorites({super.key});

  @override
  State<Favorites> createState() => _FavoritesState();
}

class _FavoritesState extends State<Favorites> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Icon(Icons.arrow_back),
        centerTitle: true,
        elevation: 0,
        toolbarHeight: 120,
        flexibleSpace: Container(
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 141, 25, 145),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ))),
        title: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Text(
            "FAVORITES",
            style: TextStyle(fontSize: 22),
          ),
        ),
      ),
      body: Column(children: [
        Row(
          children: [
            SizedBox(
              width: 15,
            ),
            Container(
              height: 30,
              width: 90,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey[400],
                      foregroundColor: Color(0xff0000FF),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      )),
                  onPressed: () {},
                  child: Text('Bydate')),
            ),
            SizedBox(
              width: 15,
            ),
            Container(
              height: 30,
              width: 90,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Color(0xff000000),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      side: BorderSide(color: Colors.black)),
                  onPressed: () {},
                  child: Text('Newest')),
            ),
            SizedBox(
              width: 15,
            ),
            Container(
              height: 30,
              width: 90,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Color(0xff000000),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      side: BorderSide(color: Colors.black)),
                  onPressed: () {},
                  child: Text('Oldest')),
            ),
          ],
        ),
        ListView.builder(
            itemCount: 5,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.fromLTRB(20, 15, 20, 0),
                  height: 90,
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
                  child: ListTile(
                    trailing: Padding(
                      padding: const EdgeInsets.only(top: 18.0),
                      child: Icon(Icons.delete),
                    ),
                    leading: Padding(
                      padding: const EdgeInsets.only(top: 18.0),
                      child: Icon(Icons.favorite),
                    ),
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "VR MALL KOTTAYAM",
                          style: TextStyle(fontSize: 18),
                        ),
                        Text("Near Railway Station"),
                        Text("672639")
                      ],
                    ),
                  ));
            }),
      ]),
    );
  }
}
