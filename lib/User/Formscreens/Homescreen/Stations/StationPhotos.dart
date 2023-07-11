import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class PhotosGridView extends StatefulWidget {
  PhotosGridView({Key? key}) : super(key: key);

  @override
  State<PhotosGridView> createState() => _PhotosGridViewState();
}

class _PhotosGridViewState extends State<PhotosGridView> {
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
            const SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 145,
                  width: 110,
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                      image: AssetImage('Images/ev 1.jpg'),fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: const Color(0xff0000FF),
                      width: 3
                    )
                  ),
                  child: const Padding(
                    padding: EdgeInsets.only(top: 115,),
                    child: Text(' All',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,),),
                  ),
                ),
                Container(
                  height: 145,
                  width: 110,
                  decoration: BoxDecoration(  borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                          image: AssetImage('Images/ev14.jpg'),fit: BoxFit.cover
                      )
                  ),
                  child: const Padding(
                    padding: EdgeInsets.only(top: 115),
                    child: Text(' Latest',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white),),
                  ),
                ),
                Container(
                  height: 145,
                  width: 110,
                  decoration: BoxDecoration(  borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                          image: AssetImage('Images/ev15.png'),fit: BoxFit.cover
                      )
                  ),
                  child: const Padding(
                    padding: EdgeInsets.only(top: 115),
                    child: Text(' Videos',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white),),
                  ),
                ),

              ],
            ),
            const SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('All'),
                  Container(
                    height: 35,
                    width: 140,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18),
                            side: const BorderSide(
                              color: Colors.black
                            )
                          )
                        ),
                        onPressed: (){}, child: const Row(
                      children: [
                        Icon(Icons.camera_alt_outlined,color: Colors.black,),
                        Text('Add a photo',style: TextStyle(color: Color(0xff0000ff)),)
                      ],
                    )),
                  ),
                ],
              ),
            ),
           Container(height: 1000,
             child: MasonryGridView.builder(
              physics: NeverScrollableScrollPhysics(),
               itemCount: img.length,
               gridDelegate: const SliverSimpleGridDelegateWithFixedCrossAxisCount(
               crossAxisCount: 2
             ), itemBuilder: (BuildContext context, int index) {
               return Padding(
                 padding: const EdgeInsets.all(2.5),
                 child: ClipRRect(
                     borderRadius:BorderRadius.circular(12),
                     child: Image(image: AssetImage('${img[index]}'))),
               );
             },),
           ),
          ],
        ),
      ),
    );
  }
}
