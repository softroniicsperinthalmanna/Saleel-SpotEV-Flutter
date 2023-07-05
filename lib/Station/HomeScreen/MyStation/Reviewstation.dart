import 'package:flutter/material.dart';
import 'package:spotev/User/Formscreens/Homescreen/Stations/postReview.dart';
class ReviewPageStationMystation extends StatefulWidget {
  ReviewPageStationMystation({Key? key}) : super(key: key);

  @override
  State<ReviewPageStationMystation> createState() => _ReviewPageStationMystationState();
}

class _ReviewPageStationMystationState extends State<ReviewPageStationMystation> {
var is_selected=false;
var is_selected_down=false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
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
               ),
             
              // Divider(
              //   thickness: 0.5,
              //   color: Colors.blueGrey,
              // ),
              SizedBox(height: 15,),
              Text('Sort by',style: TextStyle(fontSize: 18),),
              SizedBox(height: 10,),
              SingleChildScrollView( 
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(width: 10,),
                    Container(
                        height: 30,
                        width: 90,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              backgroundColor: Color.fromARGB(255, 1, 13, 22),
                              foregroundColor: Color.fromARGB(255, 211, 211, 218),
                            ),
                            onPressed: (){}, child: Text('Top Rated',style: TextStyle(fontSize: 12),))),
                    SizedBox(width: 10,),

                    Container(
                        height: 30,
                        width: 90,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              side: BorderSide(
                                color: Colors.black
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              backgroundColor: Colors.white,
                              foregroundColor: Colors.black,
                            ),
                            onPressed: (){}, child: Text('Newest',style: TextStyle(fontSize: 12),))),
                    SizedBox(width: 10,),

                    Container(
                        height: 30,
                        width: 90,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              side: BorderSide(
                                color: Colors.black
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              backgroundColor: Colors.white,
                              foregroundColor: Colors.black,
                            ),
                            onPressed: (){}, child: Text('Highest',style: TextStyle(fontSize: 12),))),
                    SizedBox(width: 10,),
                    Container(
                        height: 30,
                        width: 90,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              side: BorderSide(
                                color: Colors.black
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              backgroundColor: Colors.white,
                              foregroundColor: Colors.black,
                            ),
                            onPressed: (){}, child: Text('Lowest',style: TextStyle(fontSize: 12),))),
                  ],
                ),
              ),SizedBox(height: 20,),
              Container(
                height: MediaQuery.of(context).size.height,
                child:  ListView.separated(shrinkWrap: true,
                  controller: ScrollController(),
        itemCount:10,
        separatorBuilder: (BuildContext context, int index) => Divider(thickness: 1,color:Colors.black12 ,),
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
           leading: CircleAvatar(
                            radius: 18,
                            backgroundColor: Colors.red,
                            child: Text('A',style: TextStyle(color: Colors.white),),
                            
                          ),
            title: Column(mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
              children: [SizedBox(height: 10,),
                Text('Amjid p'),
                
                 Row(
                   children: [ Icon(Icons.star,color: Colors.amber,size: 15,), Icon(Icons.star,color: Colors.amber,size: 15,), Icon(Icons.star,color: Colors.amber,size: 15,), Icon(Icons.star,color: Colors.amber,size: 15,),
                     Icon(Icons.star,color: Colors.amber,size: 15,),
                   ],
                 ),  Text('Best service not much of days'),
                 SizedBox(height: 10,),
                 Row(
                 crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Container(height: 40,width: 110,
                      decoration: BoxDecoration(border: Border.all(color: Colors.blueAccent),borderRadius: BorderRadius.all(Radius.circular(10))),
                       child: Row( 
                         children: [
                           IconButton(onPressed: () { 
                                          setState(() {
                                            is_selected=!is_selected;
                                          });
                                        },
                                        icon: (is_selected)?Icon(Icons.thumb_up,color: Color(0xff0000FF),)
                                            :Icon(Icons.thumb_up_alt_outlined,color: Color(0xff0000FF),)),
                      Text("Helpful")   ],
                       ),
                     ),
                  
                              SizedBox(width: 10,),
                              Expanded(
                                child: Container(height: 40,
                                                    decoration: BoxDecoration(border: Border.all(color: Colors.blueAccent),borderRadius: BorderRadius.all(Radius.circular(10))),
                                          
                                  child: Row(
                                    children: [
                                      IconButton(
                                        icon: (is_selected_down)?Icon(Icons.thumb_down,color: Color(0xff0000FF),)
                                            :Icon(Icons.thumb_down_alt_outlined,color: Color(0xff0000FF),), onPressed: () {
                                          setState(() {
                                            is_selected_down=!is_selected_down;
                                          });
                                      },),   Text("Not Helpful") 
                                    ],
                                  ),
                                ),
                              ), ],
                 ),
              ],
            ),

           
          );
                   
                

                
    }  ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
