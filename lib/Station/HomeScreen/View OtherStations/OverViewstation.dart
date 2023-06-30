import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spotev/User/Formscreens/Homescreen/Stations/Book%20A%20Section.dart';

class OverViewPageStation extends StatefulWidget {
  const OverViewPageStation({Key? key}) : super(key: key);

  @override
  State<OverViewPageStation> createState() => _OverViewPageStationState();
}

class _OverViewPageStationState extends State<OverViewPageStation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold (
      body: Column(
        children: [
          const Row(
            children: [
              Icon(Icons.location_on_outlined,color: Color(0xff0000FF),),
              SizedBox(width: 7,),
              Text('CALICUT Road,Perinthalmanna,Kerala 679322',style: TextStyle(color: Color(0xff0000FF)),),
            ],
          ),
          const SizedBox(height: 7,),
          const Row(
            children: [
              Icon(CupertinoIcons.clock,color: Color(0xff0000FF),),
              SizedBox(width: 7,),
              Text('Open 24 hours',style: TextStyle(color: Colors.green),),
            ],
          ),
          const SizedBox(height: 7,),
          const Row(
            children: [
              Icon(CupertinoIcons.globe,color: Color(0xff0000FF),),
              SizedBox(width: 7,),
              Text('www.yxvestby.com/',style: TextStyle(color: Color(0xff0000FF)),),
            ],
          ),
          const SizedBox(height: 15,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Card(
                elevation: 10,
                child: Container(height: 120,
                width: 100,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color(0xff0000FF)
                  )
                ),
                child: const Column(
                  children: [
                    SizedBox(height: 5,),
                    Text('110 kw'),
                    SizedBox(height: 5,),
                    Text('CSS'),
                    SizedBox(height: 5,),
                    Icon(CupertinoIcons.ellipsis_circle,color: Color(0xff0000FF),),
                    SizedBox(height: 5,),
                    Text('3/4 taken', style: TextStyle(color: Colors.green),)
                  ],
                )
                  ,),
              ),
              Card(
                elevation: 10,
                child: Container(height: 120,
                width: 100,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color(0xff0000FF)
                  )
                ),
                child: const Column(
                  children: [
                    SizedBox(height: 5,),
                    Text('50 kw'),
                    SizedBox(height: 5,),
                    Text('Type2'),
                    SizedBox(height: 5,),
                    Icon(CupertinoIcons.ellipsis_circle,color: Color(0xff0000FF),),
                    SizedBox(height: 5,),
                    Text('3/3 taken', style: TextStyle(color: Colors.red),)
                  ],
                )
                  ,),
              ),
              Card(
                elevation: 10,
                child: Container(height: 120,
                width: 100,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color(0xff0000FF)
                  )
                ),
                child: const Column(
                  children: [
                    SizedBox(height: 5,),
                    Text('22 kw'),
                    SizedBox(height: 5,),
                    Text('CHAdeMo/CSS'),
                    SizedBox(height: 5,),
                    Icon(CupertinoIcons.ellipsis_circle,color: Color(0xff0000FF),),
                    SizedBox(height: 5,),
                    Text('0/1 taken', style: TextStyle(color: Colors.red),)
                  ],
                )
                  ,),
              ),

            ],
          ),
          const SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
               
              
               Stack(
                children: [
                  Container(
                    height: 220,color: Colors.red,
                    width: MediaQuery.of(context).size.width,
                   child: Image.asset('Images/review.png',fit:BoxFit.fill,height: 250,width: 50,),
                  ),
                   Align(alignment:Alignment.topCenter,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Text('4.0 (12)',),
                    )),
                ], 
               )
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Divider(
              color: Color(0xff0000FF),
              thickness: 0.2,
            ),
          ),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //   children: [
          //     Container(
          //         height: 50,
          //         width: 150,
          //         child: ElevatedButton(
          //           style: ElevatedButton.styleFrom(
          //             backgroundColor:  const Color(0xff5A5AD2),
          //             foregroundColor: Colors.white,
          //             shape: RoundedRectangleBorder(
          //               borderRadius: BorderRadius.circular(20),
          //             )
          //           ),

          //           onPressed: (){}, child: const Text('NEXT'),)),
          //     Container(
          //         height: 50,
          //         width: 150,
          //         child: ElevatedButton(
          //           style: ElevatedButton.styleFrom(
          //             backgroundColor:  const Color(0xff5A5AD2),
          //             foregroundColor: Colors.white,
          //             shape: RoundedRectangleBorder(
          //               borderRadius: BorderRadius.circular(20),
          //             )
          //           ),

          //           onPressed: (){
          //             Navigator.of(context).push(MaterialPageRoute(builder: (context) => const BookASection(),));
          //           }, child: const Text('BOOK NOW'),)),
          //   ],
          // )


        ],
      ),
    );
  }
}
