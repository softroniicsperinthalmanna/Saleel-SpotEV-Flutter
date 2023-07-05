import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class PhotosGridViewMtstation extends StatefulWidget {
  PhotosGridViewMtstation({Key? key}) : super(key: key);

  @override
  State<PhotosGridViewMtstation> createState() => _PhotosGridViewMtstationState();
}

class _PhotosGridViewMtstationState extends State<PhotosGridViewMtstation> {
List img=[
  'Images/ev 1.jpg',
  'Images/ev2.jpg',
  'Images/ev3.jpg',
  'Images/ev4.jpg',
  'Images/ev5.jpg',
  'Images/ev6.jpg',
  'Images/ev7.jpg',
  'Images/ev8.jpg',
  'Images/ev9.jpg',
  'Images/ev10.jpg',
  'Images/ev11.jpg',
  'Images/ev12.jpg',
  'Images/ev13.jpg',
  'Images/ev14.jpg',
  'Images/ev15.png',
];

  @override
  Widget build(BuildContext context) {
    return Scaffold (
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 145,
                  width: 110,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('Images/ev 1.jpg'),fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Color(0xff0000FF),
                      width: 3
                    )
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 115,),
                    child: Text(' All',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,),),
                  ),
                ),
                Container(
                  height: 145,
                  width: 110,
                  decoration: BoxDecoration(  borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          image: AssetImage('Images/ev14.jpg'),fit: BoxFit.cover
                      )
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 115),
                    child: Text(' Latest',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white),),
                  ),
                ),
                Container(
                  height: 145,
                  width: 110,
                  decoration: BoxDecoration(  borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          image: AssetImage('Images/ev15.png'),fit: BoxFit.cover
                      )
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 115),
                    child: Text(' Videos',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white),),
                  ),
                ),

              ],
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('All'),
                  Container(
                    height: 35,
                    width: 140,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18),
                            side: BorderSide(
                              color: Colors.black
                            )
                          )
                        ),
                        onPressed: (){}, child: Row(
                      children: [
                        Icon(Icons.camera_alt_outlined,color: Colors.black,),
                        Text('Add a photo',style: TextStyle(color: Color(0xff0000ff)),)
                      ],
                    )),
                  ),
                ],
              ),
            ),
           Container(
             height: 500,
             child: MasonryGridView.builder(
               itemCount: img.length,
               gridDelegate: SliverSimpleGridDelegateWithFixedCrossAxisCount(
               crossAxisCount: 2
             ), itemBuilder: (BuildContext context, int index) {
               return Padding(
                 padding: const EdgeInsets.all(2.5),
                 child: ClipRRect(
                     borderRadius:BorderRadius.circular(12),
                     child: Image(image: AssetImage('${img[index]}'))),
               );
             },),
           )
          ],
        ),
      ),
    );
  }
}
