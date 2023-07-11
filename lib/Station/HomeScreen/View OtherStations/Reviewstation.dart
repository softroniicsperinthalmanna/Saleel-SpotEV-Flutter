import 'package:flutter/material.dart';
import 'package:spotev/Station/HomeScreen/View%20OtherStations/postReviewstation.dart';
class ReviewPageStation extends StatefulWidget {
  ReviewPageStation({Key? key}) : super(key: key);

  @override
  State<ReviewPageStation> createState() => _ReviewPageStationState();
}

class _ReviewPageStationState extends State<ReviewPageStation> {
var is_selected=false;
var is_selected_down=false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          controller: ScrollController(),
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
                   const Align(alignment:Alignment.topCenter,
                    child: Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: Text('4.0 (12)',),
                    )),
                ], 
               ),
              GestureDetector(
                onTap: (){
Navigator.of(context).push(MaterialPageRoute(builder: (context) => const ReviewPostStation(),));
                },
                child: Container(
                    child: Padding(
                    padding: const EdgeInsets.only(left:20.0),
                    child: Container(
                        child: const Column(crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(' Rate and Review',style: TextStyle(fontSize:17,fontWeight: FontWeight.bold),),
                             SizedBox(height: 5,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(' Share your experience to help others'),
                                // IconButton(onPressed: (){
                            
                                // }, icon: Icon(Icons.navigate_next))
                              ],
                            ),
                            SizedBox(height: 10,),
                            Row(
                              children: [
                                CircleAvatar(radius:15,
                                  backgroundColor: Colors.green,
                                  child: Text('A'),
                                ),
                                SizedBox(width: 10,),
                                Icon(Icons.star_border,color:Colors.black,size: 30,),
                                Icon(Icons.star_border,color:Colors.black,size: 30,),
                                Icon(Icons.star_border,color:Colors.black,size: 30,),
                                Icon(Icons.star_border,color:Colors.black,size: 30,),
                                Icon(Icons.star_border,color:Colors.black,size: 30,),
                              ],
                            ),
                            
                          ],
                        )
                            
                    ),
                  ),

                ),
              ),

              const Divider(
                thickness: 0.5,
                color: Colors.blueGrey,
              ),
             const Padding(
                  padding: EdgeInsets.only(left: 10,top: 10),
                  child: Text('Sort by',style: TextStyle(fontSize: 18),),
                ),
               
              const SizedBox(height: 10,),
               SingleChildScrollView( 
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const SizedBox(width: 10,),
                      Container(
                          height: 35,
                         // width: 120,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                backgroundColor: const Color.fromARGB(255, 23, 98, 160),
                                foregroundColor: const Color.fromARGB(255, 211, 211, 218),
                              ),
                              onPressed: (){}, child: const Row(
                                children: [Icon(Icons.check),SizedBox(width: 5,),
                                  Text('Most Relevent',style: TextStyle(fontSize: 12),),
                                ],
                              ))),
                      const SizedBox(width: 10,),
            
                      Container(
                          height: 35,
                          width: 90,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                side: const BorderSide(
                                  color: Colors.black
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                backgroundColor: Colors.white,
                                foregroundColor: Colors.black,
                              ),
                              onPressed: (){}, child: const Text('Newest',style: TextStyle(fontSize: 12),))),
                      const SizedBox(width: 10,),
            
                      Container(
                          height: 35,
                          width: 90,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                side: const BorderSide(
                                  color: Colors.black
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                backgroundColor: Colors.white,
                                foregroundColor: Colors.black,
                              ),
                              onPressed: (){}, child: const Text('Highest',style: TextStyle(fontSize: 12),))),
                      const SizedBox(width: 10,),
                      Container(
                          height: 35,
                          width: 90,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                side: const BorderSide(
                                  color: Colors.black
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                backgroundColor: Colors.white,
                                foregroundColor: Colors.black,
                              ),
                              onPressed: (){}, child: const Text('Lowest',style: TextStyle(fontSize: 12),))),
                    ],
                  ),
                ),
              
              Container(constraints: BoxConstraints(
    maxHeight: 20000,), 
                child: ListView.separated(
                     physics:const ClampingScrollPhysics() ,
                    shrinkWrap: true,
                  itemCount:12,
                  separatorBuilder: (BuildContext context, int index) => const Divider(thickness: 1,color:Colors.black12 ,),
                  itemBuilder: (BuildContext context, int index) {
                            return ListTile(
                             leading: const CircleAvatar(
                              radius: 18,
                              backgroundColor: Colors.red,
                              child: Text('A',style: TextStyle(color: Colors.white),),
                              
                            ),
                              title: Column(mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                  children: [const SizedBox(height: 10,),
                  const Text('Amjid p'),
                  
                   const Row(
                     children: [ Icon(Icons.star,color: Colors.amber,size: 15,), Icon(Icons.star,color: Colors.amber,size: 15,), Icon(Icons.star,color: Colors.amber,size: 15,), Icon(Icons.star,color: Colors.amber,size: 15,),
                       Icon(Icons.star,color: Colors.amber,size: 15,),
                     ],
                   ),  const Text('Best service not much of days'),
                   const SizedBox(height: 10,),
                   Row(
                   crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Container(height: 40,width: 110,
                        decoration: BoxDecoration(border: Border.all(color: Colors.blueAccent),borderRadius: const BorderRadius.all(Radius.circular(10))),
                         child: Row( 
                           children: [
                             IconButton(onPressed: () { 
                                            setState(() {
                                              is_selected=!is_selected;
                                            });
                                          },
                                          icon: (is_selected)?const Icon(Icons.thumb_up,color: Color(0xff0000FF),)
                                              :const Icon(Icons.thumb_up_alt_outlined,color: Color(0xff0000FF),)),
                        const Text("Helpful")   ],
                         ),
                       ),
                    
                                const SizedBox(width: 10,),
                                Expanded(
                                  child: Container(height: 40,
                                                      decoration: BoxDecoration(border: Border.all(color: Colors.blueAccent),borderRadius: const BorderRadius.all(Radius.circular(10))),
                                            
                                    child: Row(
                                      children: [
                                        IconButton(
                                          icon: (is_selected_down)?const Icon(Icons.thumb_down,color: Color(0xff0000FF),)
                                              :const Icon(Icons.thumb_down_alt_outlined,color: Color(0xff0000FF),), onPressed: () {
                                            setState(() {
                                              is_selected_down=!is_selected_down;
                                            });
                                        },),   const Text("Not Helpful") 
                                      ],
                                    ),
                                  ),
                                ), ],
                   ),
                  ],
                              ),
                            
                             
                            );
                     
                  
                            
                  
                              }  ),
              ),SizedBox(height: 120,),
                      
                   ] ),

      ),
      ),);
                }
  }

