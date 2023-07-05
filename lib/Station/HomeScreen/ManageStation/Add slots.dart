import 'package:flutter/material.dart';

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
  var charger = [
    'CHAdeMo',
    'CCS',
    'TYPE-2',
    'GB/T',
    'CCS2',
  ];
  var price = [
    'Rs 100/hour',
    'Rs 200/hour',
    'Rs 110/hour',
    'Rs 150/hour',
    'Rs 50/hour',
  ];
  var selected_item1;
  var selected_item2;
  var selected_item3;
  bool switchselect = true;

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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 5.0),
                    child: Text("Voltage"),
                  ),
                  Card(
                    elevation: 3,
                    child: Container(
                      height: 50,
                      width: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: DropdownButton(
                            style: const TextStyle(
                                fontSize: 16, color: Colors.black),
                            underline: Container(),
                            isExpanded: true,
                            hint: const Text(' Voltage'),
                            value: selected_item1,
                            items: voltage
                                .map((e) => DropdownMenuItem(
                                      child: Text('$e'),
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
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 5.0),
                    child: Text("Charger Type"),
                  ),
                  Card(
                    elevation: 3,
                    child: Container(
                      height: 50,
                      width: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: DropdownButton(
                            style: const TextStyle(
                                fontSize: 16, color: Colors.black),
                            underline: Container(),
                            isExpanded: true,
                            hint: Text(' Charger type'),
                            value: selected_item2,
                            items: charger
                                .map((e) => DropdownMenuItem(
                                      child: Text(e),
                                      value: e,
                                    ))
                                .toList(),
                            onChanged: (val) {
                              setState(() {
                                selected_item2 = val;
                              });
                            }),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 50,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 5.0),
                child: Text("Price"),
              ),
              Card(
                elevation: 3,
                child: Container(
                  height: 50,
                  width: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: DropdownButton(
                        hint: const Text(' Price'),
                        underline: Container(),
                        isExpanded: true,
                        style: TextStyle(fontSize: 16, color: Colors.black),
                        value: selected_item3,
                        items: price
                            .map((e) => DropdownMenuItem(
                                  child: Text(e),
                                  value: e,
                                ))
                            .toList(),
                        onChanged: (val) {
                          setState(() {
                            selected_item3 = val;
                          });
                        }),
                  ),
                ),
              ),
            ],
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
