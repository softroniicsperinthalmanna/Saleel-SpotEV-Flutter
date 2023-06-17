// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StationsListPage extends StatefulWidget {
  StationsListPage({Key? key}) : super(key: key);

  @override
  State<StationsListPage> createState() => _StationsListPageState();
}

class _StationsListPageState extends State<StationsListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading: Icon(Icons.arrow_back),
        title: Center(child: Text('Station')),
        toolbarHeight: 80,
        backgroundColor: Color(0xff5A5AD2),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        )),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 70, top: 10),
                  child: TextField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.search,
                          size: 30,
                        ),
                        hintText: 'Search station...',
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25),
                            borderSide: BorderSide(
                              color: Colors.blueAccent,
                              width: 2,
                            ))),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 15, top: 15),
                  child: Align(
                      alignment: AlignmentDirectional.topEnd,
                      child: CircleAvatar(
                        radius: 24,
                        backgroundColor: Colors.blueAccent,
                        child: GestureDetector(
                          onTap: () {
                            showModalBottomSheet(
                                context: context,
                                builder: (context) {
                                  return Container(
                                    height: 200,
                                    width: double.infinity,
                                    color: Colors.red,
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
                      )),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: MediaQuery.of(context).size.height,
              child: ListView.builder(
                  itemCount: 6,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Card(
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: GestureDetector(
                          onTap: () {},
                          child: Container(
                            height: 170,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black),
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 8.0, right: 8),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            'YX Vestby',
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          SizedBox(
                                            width: 19,
                                          ),
                                          Text('45km'),
                                          Expanded(
                                            child: ListTile(
                                              trailing: Icon(
                                                  Icons.turn_right_rounded),
                                            ),
                                          )
                                        ],
                                      ),
                                      Text('Palakkad'),
                                      SizedBox(
                                        height: 3,
                                      ),
                                      Row(
                                        children: [
                                          Text('4.0'),
                                          Icon(
                                            Icons.star,
                                            color: Colors.amber,
                                            size: 20,
                                          ),
                                          Icon(
                                            Icons.star,
                                            color: Colors.amber,
                                            size: 20,
                                          ),
                                          Icon(
                                            Icons.star,
                                            color: Colors.amber,
                                            size: 20,
                                          ),
                                          Icon(
                                            Icons.star,
                                            color: Colors.amber,
                                            size: 20,
                                          ),
                                          Icon(
                                            Icons.star,
                                            size: 20,
                                          ),
                                          Text('(20)')
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
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
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
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
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
                                            '2/4',
                                            style:
                                                TextStyle(color: Colors.green),
                                          ),
                                          Text(
                                            '2/2',
                                            style: TextStyle(color: Colors.red),
                                          ),
                                          Text(
                                            '0/1',
                                            style:
                                                TextStyle(color: Colors.green),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
