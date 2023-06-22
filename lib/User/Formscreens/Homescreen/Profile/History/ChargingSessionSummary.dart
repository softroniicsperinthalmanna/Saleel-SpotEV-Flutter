import 'package:flutter/material.dart';

class ChargingSummary extends StatefulWidget {
  const ChargingSummary({super.key});

  @override
  State<ChargingSummary> createState() => _ChargingSummaryState();
}

class _ChargingSummaryState extends State<ChargingSummary> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Icon(Icons.arrow_back),
        centerTitle: true,
        title: Text("Charging Session Summary"),
        elevation: 0,
        toolbarHeight: 120,
        flexibleSpace: Container(
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 141, 25, 145),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ))),
      ),
      body: Center(
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Text(
              "Thank You",
              style: TextStyle(fontSize: 25, color: Colors.blue),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Container(
              width: 310,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all()),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  children: [
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: Text(
                          "Session Details",
                          style: TextStyle(
                              decoration: TextDecoration.underline,
                              wordSpacing: 2,
                              decorationThickness: 2,
                              fontSize: 18),
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          "Charging Station",
                          style: TextStyle(fontWeight: FontWeight.w100),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 40),
                          child: Text("YX Vestiby",
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.w600)),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          "Connector Type",
                          style: TextStyle(fontWeight: FontWeight.w100),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 45),
                          child: Text("Type-2",
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.w600)),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          "Charging Point ID",
                          style: TextStyle(fontWeight: FontWeight.w100),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 35),
                          child: Text("YX Vestiby-AMD-CP10",
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.w600)),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          "Duration",
                          style: TextStyle(fontWeight: FontWeight.w100),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 90),
                          child: Text("00:20:36",
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.w600)),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          "Energy Delivered",
                          style: TextStyle(fontWeight: FontWeight.w100),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 39),
                          child: Text("2.30 Kw",
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.w600)),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          "Sessin Tariff",
                          style: TextStyle(fontWeight: FontWeight.w100),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 70),
                          child: Text("? 15.00/Kw",
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.w600)),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          "Sessin Start Time",
                          style: TextStyle(fontWeight: FontWeight.w100),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 35),
                          child: Text("30.04.2023  7:13PM",
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.w600)),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(0),
            child: Container(
              width: 310,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all()),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  children: [
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: Text(
                          "Invoice Details",
                          style: TextStyle(
                              decoration: TextDecoration.underline,
                              wordSpacing: 2,
                              decorationThickness: 2,
                              fontSize: 18),
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          "Charging Fee",
                          style: TextStyle(fontWeight: FontWeight.w100),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 60),
                          child: Text("?12.00",
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.w600)),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          "Tax",
                          style: TextStyle(fontWeight: FontWeight.w100),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 119),
                          child: Text("?0.60",
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.w600)),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          "Total Amount",
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 50),
                          child: Text("?12.60",
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.w600)),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Container(
              width: 310,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all()),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  children: [
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 3.0),
                        child: Text(
                          "Feedback",
                          style: TextStyle(
                              decoration: TextDecoration.underline,
                              wordSpacing: 2,
                              decorationThickness: 2,
                              fontSize: 18),
                        ),
                      ),
                    ),
                    Text(
                      "Please rate your experience",
                      style: TextStyle(fontSize: 17),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.grade_outlined,
                          size: 30,
                          color: Colors.blue,
                        ),
                        Icon(
                          Icons.grade_outlined,
                          size: 30,
                          color: Colors.blue,
                        ),
                        Icon(
                          Icons.grade_outlined,
                          color: Colors.blue,
                          size: 30,
                        ),
                        Icon(
                          Icons.grade_outlined,
                          size: 30,
                          color: Colors.blue,
                        ),
                        Icon(
                          Icons.grade_outlined,
                          color: Colors.blue,
                          size: 30,
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                            prefixIcon: Icon(Icons.message),
                            labelStyle: TextStyle(color: Colors.blue),
                            hintText: "Have a suggestion?"),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(
                              Color.fromARGB(255, 129, 6, 160),
                            ),
                            minimumSize: MaterialStatePropertyAll(
                              Size(300, 50),
                            ),
                            textStyle: MaterialStatePropertyAll(
                              TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.bold),
                            ),
                            shape: MaterialStatePropertyAll(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)))),
                        onPressed: () {},
                        child: Text("Submit Feedback"),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
