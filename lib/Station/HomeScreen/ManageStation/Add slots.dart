import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

import '../../../CONNECTION/connect.dart';

class AddSlots extends StatefulWidget {
  AddSlots({Key? key}) : super(key: key);

  @override
  State<AddSlots> createState() => _AddSlotsState();
}

class _AddSlotsState extends State<AddSlots> {
  var voltage = [
    '110 KW',
    '22 KW',
    '50 KW',
  ];
 
  var selected_item1;
  var selected_item2;
  var selected_item3;
  bool switchselect = true;



var name_flag;
  var ListData = [];



   Future<void> getName() async {
    var response = await post(Uri.parse('${Con.url}/getConnectorName.php'));
    print(response.body);

    if (response.statusCode == 200 &&
        jsonDecode(response.body)[0]['result'] == 'Success') {
      name_flag = 1;
      var connectorName = jsonDecode(response.body);
      print('*********************************************');
      print('connectorName is = $connectorName');

      setState(() {
        ListData = connectorName
            .map((listItem) => {
                  'c_id': listItem['c_id'],
                  'name': listItem['name'],
                  'volt': listItem['volt'],
                  'price': listItem['price'],
                })
            .toList();
      });
      print('*********************************************');

      print('ListData is = $ListData');
      // return jsonDecode(response.body);
    }
    // else
    //   drop_flag=0;
    // drop_flag==1?      item=jsonDecode(response.body):item.add('Nothing to show');
  }

  @override
void initState(){

  super.initState();
  getName();
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true,
        // leading: Icon(Icons.arrow_back),
        title: Text(
          'Add Slots',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        toolbarHeight: 80,
        backgroundColor: const Color(0xff5A5AD2),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        )),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          const SizedBox(
            height: 120,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 5.0),
                  child: Text("Select Your Slot"),
                ),
                Card(
                  elevation: 3,
                  child: Container(
                    // height: 50,
                    // width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: DropdownButton(
                        itemHeight: 80,
                          style: const TextStyle(
                              fontSize: 16, color: Colors.black),
                          underline: Container(),
                          isExpanded: true,
                          hint: const Text(' Select Your Slot'),
                          value: selected_item1,
                          items: ListData
                              .map((e) => DropdownMenuItem(
                                    child: Card(
                                      child: Container(
                                        height: 150,
                                        child: ListTile(
                                          
                                          title: Text('Connector Type: ${e['name']}'),
                                          subtitle:   Text('Volt: ${e['volt']}kW '),
                                          trailing:Text(' Rs. ${e['price']}',style: TextStyle(color: Colors.red),)),
                                      ),
                                    ),
                                    value: e,
                                  ))
                              .toList(),
                          onChanged: (val) {
                            setState(() {
                              selected_item1 = val;
                            });
                          }),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 50,
          ),
         
          const SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Disable slot'),
              const SizedBox(
                width: 20,
              ),
              Switch(
                  value: switchselect,
                  onChanged: (bool? value) {
                    setState(() {
                      switchselect = !switchselect;
                    });
                  })
            ],
          ),
          const SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Container(
              height: 50,
              width:MediaQuery.of(context).size.width,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xff5A5AD2),
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      )),
                  onPressed: () {Navigator.pop(context);},
                  child: const Text(
                    'Submit',
                    style: TextStyle(fontSize: 18),
                  )),
            ),
          )
        ]),
      ),
    );
  }
}
