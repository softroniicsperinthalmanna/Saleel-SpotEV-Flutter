import 'package:flutter/material.dart';
class ReviewPostStation extends StatefulWidget {
  const ReviewPostStation({Key? key}) : super(key: key);

  @override
  State<ReviewPostStation> createState() => _ReviewPostStationState();
}

class _ReviewPostStationState extends State<ReviewPostStation> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          IconButton(onPressed: () {
            Navigator.pop(context);
          },
          icon:
           const Icon(Icons.arrow_back)),
          const SizedBox(height: 20,),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('YX Vestyby',),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 18,
                  backgroundColor: Colors.green,
                  foregroundColor: Colors.white,
                  child: Text('A'),
                ),
                SizedBox(width: 15,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Anil Prakash'),
                    Row(
                      children: [
                        Text('Posting publically '),
                        Icon(Icons.info_outline,size: 18,)
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 50),
            child: Container(
              height: 50,
              child: ListView.builder(
                itemCount: 5,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                return const Icon(Icons.star,color: Colors.amber,size: 30,);
              },
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(10),
            child: Text('Share more about your experience',style: TextStyle(fontSize: 18),),
          ),
          SizedBox(
            height: 150,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: TextField(
                expands: true,
                maxLines: null,
                minLines: null,
                keyboardType: TextInputType.multiline,
                decoration: InputDecoration(
                  hintText: 'share details of your own experience at \nthis place',
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: const BorderSide(
                      color:  Color(0xff0000FF),
                      width: 2,
                    )
                  )
                ),
              ),
            ),
          ),
          const SizedBox(height: 15,),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                border: Border.all(
                  color: const Color(0xff0000FF),
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton(onPressed: (){}, icon: const Icon(Icons.camera_alt,color: Colors.deepPurple,)),
                  TextButton(onPressed: () {  },
                  child: const Text('Add Yours',style: TextStyle(color: Colors.black),)),
                ],
              ),
            ),
          ),
          const SizedBox(height: 100,),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Container(
                height: 50,
                width: double.infinity,
                child: ElevatedButton(

                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      backgroundColor: const Color(0xff5A5AD2),
                      foregroundColor: Colors.white
                    ),
                    onPressed: (){}, child: const Text('Post'))),
          ),
        ],
      ),
    );
  }
}
