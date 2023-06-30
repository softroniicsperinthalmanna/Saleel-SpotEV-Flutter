import 'package:flutter/material.dart';

class ComplaintPage extends StatefulWidget {
  const ComplaintPage({Key? key}) : super(key: key);

  @override
  State<ComplaintPage> createState() => _ComplaintPageState();
}

class _ComplaintPageState extends State<ComplaintPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true,
        // leading: Icon(Icons.arrow_back),
        title: Text('Complaints'),
        toolbarHeight: 80,
        backgroundColor: Color(0xff5A5AD2),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        )),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: SizedBox(
                  width: 300,
                  height: 55,
                  child: TextField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.search,
                          size: 28,
                        ),
                        hintText: 'Search Complaints...',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(
                              color: Colors.black,
                              width: 2,
                            ))),
                  ),
                ),
              ),
              Text(
                "Sort by",
                style: TextStyle(fontSize: 18),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 40,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xff5A5AD2),
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
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
                        width: 100,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),
                        child: Center(
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
                      width: 100,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      child: Center(
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
              SizedBox(
                height: 15,
              ),
              Text(
                "Today",
                style: TextStyle(
                    fontSize: 16,
                    color: Color(0xff5A5AD2),
                    fontWeight: FontWeight.bold),
              ),
              Card(
                elevation: 5,
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            children: [
                              Text(
                                "Name                      :",
                                style: TextStyle(fontWeight: FontWeight.w600),
                              ),
                              Text(
                                "Complaint_Type    :",
                                style: TextStyle(fontWeight: FontWeight.w600),
                              ),
                              Text(
                                "Description            :",
                                style: TextStyle(fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(" Soman"),
                                Text(" Slow Charging"),
                                Text(
                                    " Lorem ipsum dolor sit amet.Lorem ipsum dolor sit amet."),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Card(
                elevation: 5,
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            children: [
                              Text(
                                "Name                      :",
                                style: TextStyle(fontWeight: FontWeight.w600),
                              ),
                              Text(
                                "Complaint_Type    :",
                                style: TextStyle(fontWeight: FontWeight.w600),
                              ),
                              Text(
                                "Description            :",
                                style: TextStyle(fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(" Shashankan"),
                                Text(" Slow Charging"),
                                Text(
                                    " Lorem ipsum dolor sit amet.Lorem ipsum dolor sit amet."),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text(
                  '2023-05-14',
                  style: TextStyle(
                      fontSize: 16,
                      color: Color(0xff5A5AD2),
                      fontWeight: FontWeight.bold),
                ),
              ),
              Card(
                elevation: 5,
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            children: [
                              Text(
                                "Name                      :",
                                style: TextStyle(fontWeight: FontWeight.w600),
                              ),
                              Text(
                                "Complaint_Type    :",
                                style: TextStyle(fontWeight: FontWeight.w600),
                              ),
                              Text(
                                "Description            :",
                                style: TextStyle(fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(" Williamz"),
                                Text(" Charger Faulty  "),
                                Text(
                                    " Lorem ipsum dolor sit amet.Lorem ipsum dolor sit amet."),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              )
            ],
          ),
        ),
      ),
    );
  }
}
