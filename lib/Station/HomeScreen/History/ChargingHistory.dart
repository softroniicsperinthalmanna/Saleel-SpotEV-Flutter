import 'package:flutter/material.dart';
import 'package:spotev/Station/HomeScreen/History/PaymentHistory.dart';

import 'ChargingHistoryList.dart';

class  ChargingHistoryStation extends StatefulWidget {
   ChargingHistoryStation({Key? key}) : super(key: key);

  @override
  State<ChargingHistoryStation> createState() => _ChargingHistoryStationState();
}

class _ChargingHistoryStationState extends State<ChargingHistoryStation> {
  DateTime _dateTime = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Charging History'),
        toolbarHeight: 80,
        backgroundColor: const Color(0xff5A5AD2),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        )),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '   Sort by',
                    style: TextStyle(fontSize: 18),
                  ), Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: IconButton(
                        onPressed: () async {
                          DateTime? _newDate = await showDatePicker(
                            context: context,
                            initialDate: _dateTime,
                            firstDate: DateTime(2020),
                            lastDate: DateTime(2050),
                            builder: (context, child) => Theme(
                                data: ThemeData.light().copyWith(
                                  colorScheme: ColorScheme.fromSwatch(
                                    primarySwatch: Colors.indigo,
                                    // primaryColorDark: Colors.green,
                                    // accentColor: Color(0xff5A5AD2),
                                  ),
                                  dialogBackgroundColor: Colors.white,
                                ),
                                child: child!),
                          );
                          if (_newDate != null) {
                            setState(() {
                              _dateTime = _newDate;
                            });
                          }
                        },
                        icon: Icon(
                          Icons.calendar_month,
                          size: 40,
                          color: Color(0xff5A5AD2),
                        )),
                  ),




                  
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 7, left: 16, right: 30),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 40,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xff5A5AD2),
                    ),
                    child: const Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.check,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "Bydate",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: Container(
                      height: 40,
                      width: 75,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      child: const Center(
                          child: Text(
                        "Newest",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      )),
                    ),
                  ),
                  Container(
                    height: 40,
                    width: 75,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child: const Center(
                        child: Text(
                      "Oldest",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    )),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              height: MediaQuery.of(context).size.height,
              child: ListView.builder(
                controller: ScrollController(),
                itemCount: charging.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      elevation: 10,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const PaymentHistoryStation(),
                          ));
                        },
                        child: Container(
                          alignment: Alignment.center,
                          height: 110,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(
                                15), //border corner radius
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey
                                    .withOpacity(0.5), //color of shadow
                                spreadRadius: 5, //spread radius
                                blurRadius: 7, // blur radius
                                offset:
                                    const Offset(0, 2), // changes position of shadow
                                //first paramerter of offset is left-right
                                //second parameter is top to down
                              ),
                              //you can set more BoxShadow() here
                            ],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10, top: 3),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      ' ${charging[index]['date']}',
                                      style: const TextStyle(color: Colors.red),
                                    ),
                                    const SizedBox(
                                      width: 20,
                                    ),
                                    Text(
                                      '${charging[index]['time']}',
                                      style: const TextStyle(color: Colors.indigo),
                                    ),
                                  ],
                                ),
                                // SizedBox(height: 10,),
                                Row(
                                  children: [
                                    const Icon(
                                      Icons.person_2_outlined,
                                      color: Colors.blue,
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Text('${charging[index]['User']}'),
                                    Expanded(
                                      child: ListTile(
                                        trailing: Text(
                                          'Rs.${charging[index]['rate']}',
                                          style: const TextStyle(color: Colors.green),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    const Icon(
                                      Icons.radio_button_checked_sharp,
                                      color: Colors.blue,
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      '${charging[index]['type']}',
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
     ),
    );
  }
}
