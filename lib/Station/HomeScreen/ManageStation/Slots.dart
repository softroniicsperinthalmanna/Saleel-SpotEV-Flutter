
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:spotev/Station/HomeScreen/ManageStation/Add%20slots.dart';

import '../../../CONNECTION/connect.dart';

class Slots extends StatefulWidget {
  const Slots({super.key});

  @override
  State<Slots> createState() => _SlotsState();
}

class _SlotsState extends State<Slots> {
  var flag;
 Future<dynamic> getData() async {
  var data={
    'station_id':'3'
  };
  var response=await post(Uri.parse("${Con.url}/viewSlots.php"),body: data);
  print(response.body);
   if (jsonDecode(response.body)[0]['result'] == 'Success') {
      flag = 1;
      return jsonDecode(response.body);
    } else {
      flag = 0;
      print(response.body);
    }
   

 }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
          elevation: 0,
          backgroundColor: const Color(0xff5A5AD2),
          icon: const Icon(Icons.add),
          onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => AddSlots(),));
          },
          label: const Text("Add Slots")),
      appBar: AppBar(
        centerTitle: true,
        // leading: Icon(Icons.arrow_back),
        title: const Text(
          'Slots',
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
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Container(
              height: MediaQuery.of(context).size.height,
              child:FutureBuilder(
                future: getData(),
                builder: (context, snapshot) {
                    if (snapshot.hasError) print(snapshot.error);
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return const Center(child: Text('waiting for connection....'));
                      return const Center(child: Text('waiting for connection....'));
                    }
                    if (!snapshot.hasData || snapshot.data.length == 0) {
                      return const Center(
                        child: Text('No Data Found !!'),
                      );
                    }

                    return flag == 1 ?







                   ListView.builder(
                      itemCount: snapshot.data.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Container(
                            height: 80,
                            width: MediaQuery.of(context).size.width,
                            decoration: const BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(
                              color: Colors.grey,
                              width: 0.5,
                            ))),
                            child: ListTile(
                              leading: const Icon(
                                Icons.ev_station_outlined,
                                color: Colors.blueAccent,
                              ),
                              trailing: const Text(
                                '0/1',
                                style: TextStyle(color: Colors.green),
                              ),
                              title: Row(
                                children: [
                                  Text('${snapshot.data[index]['name']}: '),
                                  Text('${snapshot.data[index]['volt']}'),
                                ],
                              ),
                              subtitle: Row(
                                children: [
                                  const Text(
                                    'Unit Price: ',
                                    style: TextStyle(color: Colors.red),
                                  ),
                                  Text('${snapshot.data[index]['price']}/hour'),
                                ],
                              ),
                            ),
                          ),
                        );
                      }):  const Center(child: CircularProgressIndicator(),);
                }
              ),
            ),
          ],
        ),
      ),
    );
  }
}
