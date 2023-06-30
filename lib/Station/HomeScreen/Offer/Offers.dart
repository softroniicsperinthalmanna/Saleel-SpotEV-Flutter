import 'package:flutter/material.dart';

class ManageOffer extends StatefulWidget {
  const ManageOffer({super.key});

  @override
  State<ManageOffer> createState() => _ManageOfferState();
}

class _ManageOfferState extends State<ManageOffer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true,
        // leading: Icon(Icons.arrow_back),
        title: Text('Offers'),
        toolbarHeight: 80,
        backgroundColor: const Color(0xff5A5AD2),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        )),
      ),
      floatingActionButton: FloatingActionButton.extended(
          elevation: 0,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(13)),
          backgroundColor: const Color(0xff5A5AD2),
          icon: const Icon(Icons.add),
          onPressed: () {},
          label: const Text(
            "Add Offers",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 11),
          )),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            children: [
             
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 120,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15)),
                   
                    image: DecorationImage(
                        image: AssetImage('Images/offer5.png'),
                        fit: BoxFit.cover)),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 130,
                    width: 165,
                    decoration: const BoxDecoration(
                       
                        image: DecorationImage(
                            image: AssetImage('Images/offer1.png'),
                            fit: BoxFit.cover)),
                  ),
                  Container(
                    height: 130,
                    width: 165,
                    decoration: const BoxDecoration(
                       
                        image: DecorationImage(
                            image: AssetImage('Images/offer2.png'),
                            fit: BoxFit.cover)),
                  ),
                ],
              ),
              const SizedBox(
                height: 7,
              ),
              Container(
                height: 280,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                   
                    image: const DecorationImage(
                        image: AssetImage('Images/offer3.png'),
                        fit: BoxFit.cover),
                    border: Border.all(color: Colors.black)),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 80,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                   
                    image: DecorationImage(
                        image: AssetImage('Images/offer4.png'),
                        fit: BoxFit.cover)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
