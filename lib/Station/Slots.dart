import 'package:flutter/material.dart';

class Slots extends StatefulWidget {
  const Slots({super.key});

  @override
  State<Slots> createState() => _SlotsState();
}

class _SlotsState extends State<Slots> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
          elevation: 0,
          backgroundColor: Color(0xff5A5AD2),
          icon: Icon(Icons.add),
          onPressed: () {},
          label: Text("Add Slots")),
      appBar: AppBar(
        // leading: Icon(Icons.arrow_back),
        title: Center(
            child: Text(
          'Slots',
          style: TextStyle(fontWeight: FontWeight.bold),
        )),
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
            SizedBox(
              height: 20,
            ),
            Container(
              height: MediaQuery.of(context).size.height,
              child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Container(
                        height: 80,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                          color: Colors.grey,
                          width: 0.5,
                        ))),
                        child: ListTile(
                          leading: Icon(
                            Icons.ev_station_outlined,
                            color: Colors.blueAccent,
                          ),
                          trailing: Text(
                            '0/1',
                            style: TextStyle(color: Colors.green),
                          ),
                          title: Row(
                            children: [
                              Text('CHAdeMo '),
                              Text(': 110 kW '),
                            ],
                          ),
                          subtitle: Row(
                            children: [
                              Text(
                                'Unit Price',
                                style: TextStyle(color: Colors.red),
                              ),
                              Text(': 110/hour'),
                            ],
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