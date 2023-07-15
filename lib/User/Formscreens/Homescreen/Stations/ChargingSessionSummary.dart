import 'package:flutter/material.dart';
import 'package:spotev/User/Formscreens/Homescreen/Home/Homepage.dart';

class ChargingSummary extends StatefulWidget {
  const ChargingSummary({super.key});

  @override
  State<ChargingSummary> createState() => _ChargingSummaryState();
}

class _ChargingSummaryState extends State<ChargingSummary> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(automaticallyImplyLeading: false,
             leading: GestureDetector(onTap:(){Navigator.push(context, MaterialPageRoute(builder: (context) => HomePageUser(),));},
              child: Icon(Icons.arrow_back)),
            centerTitle: true,
            title: const Text('Charging Session Summary'),
            toolbarHeight: 80,
            backgroundColor: const Color(0xff5A5AD2),
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                )
            ),
          ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [const SizedBox(height: 20,),
            const Text('Thank You',style: TextStyle(fontSize: 20,color: Color(0xff0000FF)),),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Container(
                 
                            width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                    
                    )
                  ),
                  child: const Column(
                    children: [SizedBox(height: 10,),
                      Text('Session Details',style:TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                      SizedBox(height: 20,),
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Charging Station'),
                                Text('Connnector Type '),
                                Text('Charging Point ID'),
                                Text('Duration'),
                                Text('Energy Delivered'),
                                Text('Session Traffic'),
                                Text('Session Start Time'),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('YX Vestby'),
                                Text('Type-2'),
                                Text('YX vestby-AMB-CP10'),
                                Text('00:20:36'),
                                Text('2:30 kw '),
                                Text('Rs 15.00/kw'),
                                Text('30.04.2023 7:14 PM'),
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
            Padding(
              padding: const EdgeInsets.only(left: 10,right: 10),
              child: Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Container(
                  height: 125,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                    )
                  ),
                  child: const Column(
                    children: [SizedBox(height: 5,),
                      Text('Invoice Details',style:TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                      SizedBox(height: 20,),
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Charging Fee'),
                                Text('Tax'),
                                Text('Total Amount'),
      
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Rs.12.00'),
                                Text('Rs.0.60'),
                                Text('Rs.12.60'),
      
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
            Padding(
              padding: const EdgeInsets.only(left: 10,right: 10),
              child: Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Container(
                  height: 270,
                   width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                      )
                  ),
                  child: Column(
                    children: [SizedBox(height: 10,),
                      Center(child: const Text('Feedback',style:TextStyle(fontWeight: FontWeight.bold,fontSize: 18),)),
                      const SizedBox(height: 10,),
                      Center(child: const Text('Please rate your experience',)),
                      Padding(
                        padding: const EdgeInsets.only(left: 66,top: 5),
                        child: Container(
                          height: 50,
                          child: ListView.builder(
                              itemCount: 5,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context,index){
                            return Center(child: const Icon(Icons.star_border,size:40,color: Color(0xff0000FF),));
                          }),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Container(
                            height: 50,
                            width: MediaQuery.of(context).size.width,
                            child:TextFormField( 
                              keyboardType: TextInputType.multiline,
                            decoration: const InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10),
                                  ),
                                ),
                                prefixIcon: Icon(Icons.message),
                                labelStyle: TextStyle(color: Colors.blue),
                                hintText: "Have a suggestion?"),
                          ),
                     
      
                    )  ,
                  ), Padding(
                        padding: const EdgeInsets.all(10),
                        child: Container(
                            height: 50,
                            width: MediaQuery.of(context).size.width,
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    side: const BorderSide(
                                    ),
                                    backgroundColor: Colors.transparent,
                                    foregroundColor: Colors.black
                                ),
                                onPressed: (){}, child: const Text('Submit feedback'))),
                      )
           ] ),
              ),
            ),
          ), SizedBox(height: 15,),
            ],
          ),
      ));

           
                           
                  
                 
       
  }
}
