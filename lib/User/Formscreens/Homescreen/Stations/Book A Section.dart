import 'package:flutter/material.dart';
import 'package:spotev/User/Formscreens/Homescreen/Stations/Confirmbooking.dart';

class BookASection extends StatelessWidget {
  const BookASection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 3, child:
      Scaffold(
          appBar: AppBar(
            // leading: Icon(Icons.arrow_back),
            centerTitle: true,
            title: const Text('Book a section'),
            toolbarHeight: 75,
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
          children: [
           
            const SizedBox(height: 10,),
            const TabBar(
                labelColor: Colors.black,
                tabs: [
              Tab(
                text: '12 May 2023',
              ),
              Tab(
                text: '13 May 2023',
              ),
              Tab(
                text: '14 May 2023',
              ),
            ]),
            const SizedBox(height: 15,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  children: [
                    Container(
                      height: 15,
                      width: 15,
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.black
                          ),
                          color: Colors.grey
                      ),
                    ),
                    const Text(' Occupaid'),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      height: 15,
                      width: 15,
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.black
                        ),

                      ),
                    ),
                    const Text(' Available'),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      height: 15,
                      width: 15,
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.black
                          ),
                          color: Colors.green
                      ),
                    ),
                    const Text(' Selected'),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text(' 1 PM '),
                Container(
                  height: 70,
                  width: 75,
                  color: Colors.transparent,
                ),
                GestureDetector(
                  onTap: (){
                    showModalBottomSheet(context: context, builder: (conetxt){
                      return Container(
                        height: 300,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          children: [
                            const SizedBox(height: 20,),
                            const Text('selected section',),
                            const SizedBox(height: 50,),
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                CircleAvatar(
                                  radius: 5,
                                  backgroundColor: Colors.deepPurple,
                                ),
                                CircleAvatar(
                                  radius: 5,
                                  backgroundColor: Colors.green,
                                ),
                              ],
                            ),
                            const SizedBox(height: 15,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                const Text(' 1:15 PM\n 12 May 2023'),
                                Container(
                                  height: 30,
                                  width: 65,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: const Color(0xff0000FF),
                                    ),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: const Center(child: Text('45 min')),
                                ),
                                const Text('1:15 PM\n12 May 2023'),

                              ],
                            ),
                            const SizedBox(height: 30,),
                            Center(
                              child: Container(
                                  height: 50,
                                  width: 200,
                                  child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: const Color(0xff5A5AD2),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(10),
                                        )
                                      ),
                                      onPressed: (){Navigator.of(context).push(MaterialPageRoute(builder: (context) =>const Confirmbooking() ,));
                                      }, child: const Text('Proceed'))),
                            )
                          ],
                        ),
                      );
                    });
                  },
                  child: Container(
                    height: 70,
                    width: 75,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                      ),
                      color: Colors.green
                    ),
                    child: const Center(child: Text('1:15 PM-\n1:30 PM')),
                  ),
                ),
                Container(
                  height: 70,
                  width: 75,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                    ),
                    color: Colors.green
                  ),
                  child: const Center(child: Text('1:30 PM-\n1:45 PM')),
                ),
                Container(
                  height: 70,
                  width: 75,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                    ),
                    color: Colors.green
                  ),
                  child: const Center(child: Text('1:45 PM-\n2:00 PM')),
                ),

              ],
            ),
            const SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text(' 2 PM '),
                Container(
                  height: 70,
                  width: 75,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                    ),

                  ),
                  child: const Center(child: Text('2:00 PM-\n2:15 PM')),
                ),
                Container(
                  height: 70,
                  width: 75,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                    ),
                    color: Colors.grey
                  ),
                  child: const Center(child: Text('2:15 PM-\n2:15 PM')),
                ),
                Container(
                  height: 70,
                  width: 75,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                    ),
                    color: Colors.grey
                  ),
                  child: const Center(child: Text('2:30 PM-\n2:45 PM')),
                ),
                Container(
                  height: 70,
                  width: 75,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                    ),
                    color: Colors.grey
                  ),
                  child: const Center(child: Text('2:45 PM-\n3:00 PM')),
                ),

              ],
            ),
            const SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text(' 3 PM '),
                Container(
                  height: 70,
                  width: 75,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                      ),

                  ),
                  child: const Center(child: Text('3:00 PM-\n3:15 PM')),
                ),
                Container(
                  height: 70,
                  width: 75,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                    ),

                  ),
                  child: const Center(child: Text('3:15 PM-\n3:30 PM')),
                ),
                Container(
                  height: 70,
                  width: 75,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                    ),
                    color: Colors.green
                  ),
                  child: const Center(child: Text('3:30 PM-\n3:45 PM')),
                ),
                Container(
                  height: 70,
                  width: 75,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                    ),
                    color: Colors.green
                  ),
                  child: const Center(child: Text('3:34 PM-\n4:00 PM')),
                ),

              ],
            ),
            const SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text(' 4 PM '),
                Container(
                  height: 70,
                  width: 75,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                      ),
                      color: Colors.grey
                  ),
                  child: const Center(child: Text('1:15 PM-\n1:30 PM')),
                ),
                Container(
                  height: 70,
                  width: 75,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                    ),
                    color: Colors.grey
                  ),
                  child: const Center(child: Text('1:15 PM-\n1:30 PM')),
                ),
                Container(
                  height: 70,
                  width: 75,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                    ),
                    color: Colors.grey
                  ),
                  child: const Center(child: Text('1:15 PM-\n1:30 PM')),
                ),
                Container(
                  height: 70,
                  width: 75,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                    ),
                    color: Colors.grey
                  ),
                  child: const Center(child: Text('1:15 PM-\n1:30 PM')),
                ),

              ],
            ),
            const SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text(' 5 PM '),
                Container(
                  height: 70,
                  width: 75,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                      ),

                  ),
                  child: const Center(child: Text('1:15 PM-\n1:30 PM')),
                ),
                Container(
                  height: 70,
                  width: 75,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                    ),
                  ),
                  child: const Center(child: Text('1:15 PM-\n1:30 PM')),
                ),
                Container(
                  height: 70,
                  width: 75,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                    ),
                  ),
                  child: const Center(child: Text('1:15 PM-\n1:30 PM')),
                ),
                Container(
                  height: 70,
                  width: 75,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                    ),
                  ),
                  child: const Center(child: Text('1:15 PM-\n1:30 PM')),
                ),

              ],
            ),
            const SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text(' 6 PM '),
                Container(
                  height: 70,
                  width: 75,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black,
                        ),
                    ),
                    child: const Center(child: Text('1:15 PM-\n1:30 PM'))                ),
                Container(
                  height: 70,
                  width: 75,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                    ),
                  ),
                  child: const Center(child: Text('1:15 PM-\n1:30 PM')),
                ),
                Container(
                  height: 70,
                  width: 75,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                    ),
                  ),
                  child: const Center(child: Text('1:15 PM-\n1:30 PM')),
                ),
                Container(
                  height: 70,
                  width: 75,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                    ),
                  ),
                  child: const Center(child: Text('1:15 PM-\n1:30 PM')),
                ),

              ],
            ),
            const SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text(' 7 PM '),
                Container(
                  height: 70,
                  width: 75,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                      ),
                  ),
                  child: const Center(child: Text('1:15 PM-\n1:30 PM')),

                ),
                Container(
                  height: 70,
                  width: 75,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                    ),
                  ),
                  child: const Center(child: Text('1:15 PM-\n1:30 PM')),
                ),
                Container(
                  height: 70,
                  width: 75,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                    ),
                  ),
                  child: const Center(child: Text('1:15 PM-\n1:30 PM')),
                ),
                Container(
                  height: 70,
                  width: 75,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                    ),
                  ),
                  child: const Center(child: Text('1:15 PM-\n1:30 PM')),
                ),

              ],
            ),
            const SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text(' 8 PM '),
                Container(
                  height: 70,
                  width: 75,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                      ),
                  ),
                  child: const Center(child: Text('1:15 PM-\n1:30 PM')),                ),
                Container(
                  height: 70,
                  width: 75,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                    ),
                  ),
                  child: const Center(child: Text('1:15 PM-\n1:30 PM')),
                ),
                Container(
                  height: 70,
                  width: 75,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                    ),
                  ),
                  child: const Center(child: Text('1:15 PM-\n1:30 PM')),
                ),
                Container(
                  height: 70,
                  width: 75,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                    ),
                  ),
                  child: const Center(child: Text('1:15 PM-\n1:30 PM')),
                ),

              ],
            ),
            const SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text(' 9 PM '),
                Container(
                  height: 70,
                  width: 75,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                      ),
                  ),
                  child: const Center(child: Text('1:15 PM-\n1:30 PM')),
                ),
                Container(
                  height: 70,
                  width: 75,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                    ),
                  ),
                  child: const Center(child: Text('1:15 PM-\n1:30 PM')),
                ),
                Container(
                  height: 70,
                  width: 75,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                    ),
                  ),
                  child: const Center(child: Text('1:15 PM-\n1:30 PM')),
                ),
                Container(
                  height: 70,
                  width: 75,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                    ),
                  ),
                  child: const Center(child: Text('1:15 PM-\n1:30 PM')),
                ),

              ],
            ),
            const SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text('10 PM'),
                Container(
                  height: 70,
                  width: 75,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                      ),
                  ),
                  child: const Center(child: Text('1:15 PM-\n1:30 PM')),
                ),
                Container(
                  height: 70,
                  width: 75,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                    ),
                  ),
                  child: const Center(child: Text('1:15 PM-\n1:30 PM')),
                ),
                Container(
                  height: 70,
                  width: 75,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                    ),
                  ),
                  child: const Center(child: Text('1:15 PM-\n1:30 PM')),
                ),
                Container(
                  height: 70,
                  width: 75,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                    ),
                  ),
                  child: const Center(child: Text('1:15 PM-\n1:30 PM')),
                ),

              ],
            ),
            const SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text('11 PM'),
                Container(
                  height: 70,
                  width: 75,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                      ),
                  ),
                  child: const Center(child: Text('1:15 PM-\n1:30 PM')),
                ),
                Container(
                  height: 70,
                  width: 75,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                    ),
                  ),
                  child: const Center(child: Text('1:15 PM-\n1:30 PM')),
                ),
                Container(
                  height: 70,
                  width: 75,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                    ),
                  ),
                  child: const Center(child: Text('1:15 PM-\n1:30 PM')),
                ),
                Container(
                  height: 70,
                  width: 75,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                    ),
                  ),
                  child: const Center(child: Text('1:15 PM-\n1:30 PM')),
                ),

              ],
            ),
            const SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text('12 PM'),
                Container(
                  height: 70,
                  width: 75,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                      ),
                  ),
                  child: const Center(child: Text('1:15 PM-\n1:30 PM')),                ),
                Container(
                  height: 70,
                  width: 75,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                    ),
                  ),
                  child: const Center(child: Text('1:15 PM-\n1:30 PM')),
                ),
                Container(
                  height: 70,
                  width: 75,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                    ),
                  ),
                  child: const Center(child: Text('1:15 PM-\n1:30 PM')),
                ),
                Container(
                  height: 70,
                  width: 75,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                    ),
                  ),
                  child: const Center(child: Text('1:15 PM-\n1:30 PM')),
                ),

              ],
            ),SizedBox(height: 20,)

          ],
        ),
      )
    ));
  }
}
