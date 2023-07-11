import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class StationProfile extends StatefulWidget {
  const StationProfile({super.key});

  @override
  State<StationProfile> createState() => _StationProfileState();
}
 bool _isPasswordVisible = false;
  bool _isPasswordVisiblee = false;


bool switchselect = true;
class _StationProfileState extends State<StationProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 21, 124, 110),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
       
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(18, 18, 18, 0),
            child: Column(children: [
             
              Column(
                children: [const SizedBox(height: 35),
                  const CircleAvatar(radius: 70,backgroundColor:Colors.white,child: Icon(Icons.ev_station,size: 70,),),
                const SizedBox(height: 20), const Text("Add Profile Pictre",style: TextStyle(color: Colors.white),),
                  const SizedBox(height: 35),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 5.0),
                        child: Text(
                          'Station Name',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Card(
                        elevation: 10,
                        color: Colors.black,
                        child: TextFormField(
                          decoration: const InputDecoration(
                            enabledBorder:
                                OutlineInputBorder(borderSide: BorderSide.none),
                            filled: true,
                            fillColor: Colors.white,
                           
                            prefixIcon: Icon(
                              Icons.ev_station_outlined,
                            ),
                          ),
                        ),
                      ), const SizedBox(height: 10),
                     
                      Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [ const Padding(
                        padding: EdgeInsets.only(left: 5.0, bottom: 3),
                        child: Row(
                          children: [
                            Text(
                              'Location',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                              ),
                            ), 
                          ],
                        ),
                      ),
                          Card(
                            elevation: 10,
                            color: Colors.black,
                            child: TextFormField(
                              decoration: const InputDecoration(
                                enabledBorder:
                                    OutlineInputBorder(borderSide: BorderSide.none),
                                filled: true,
                                fillColor: Colors.white,
                             
                                prefixIcon: Icon(
                                  Icons.location_on_outlined,
                                ),
                              ),
                            ),
                          ),
                          
                        ],
                      ),
                       
                     
                      const SizedBox(height: 10),
                      const Padding(
                        padding: EdgeInsets.only(left: 5.0, bottom: 3),
                        child: Text(
                          'Mobile Number',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Card(
                        elevation: 10,
                        color: Colors.black,
                        child: TextFormField(
                          decoration: const InputDecoration(
                            enabledBorder:
                                OutlineInputBorder(borderSide: BorderSide.none),
                            filled: true,
                            fillColor: Colors.white,
                           
                            prefixIcon: Icon(
                              Icons.call,
                            ),
                          ),keyboardType: TextInputType.phone,
                                                  inputFormatters: [LengthLimitingTextInputFormatter(10)],
                                                   onChanged: (value) {
                          if (value.length == 10) {
                            FocusScope.of(context).nextFocus();
                          }
                        },
 // Show numeric keyboard
   
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Padding(
                        padding: EdgeInsets.only(left: 5.0, top: 3),
                        child: Text(
                          'Email',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Card(
                        elevation: 10,
                        color: Colors.black,
                        child: TextFormField(                               obscureText: !_isPasswordVisible,

                          decoration: const InputDecoration(
                            enabledBorder:
                                OutlineInputBorder(borderSide: BorderSide.none),
                            filled: true,
                            fillColor: Colors.white,
                          
                            prefixIcon: Icon(
                              Icons.mail,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 5.0, top: 3),
                        child: Text(
                          'Password',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Card(
                        elevation: 10,
                        color: Colors.black,
                        child: TextFormField(
                          decoration:  InputDecoration(
                            enabledBorder:
                                OutlineInputBorder(borderSide: BorderSide.none),
                            filled: true,
                            fillColor: Colors.white,
                          
                            prefixIcon: Icon(
                              Icons.lock,
                            ), suffixIcon: IconButton(
          icon: Icon(
            _isPasswordVisible ? Icons.visibility : Icons.visibility_off,
          ),
          onPressed: () {
            setState(() {
              _isPasswordVisible = !_isPasswordVisible;
            });
          },),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding:
                                EdgeInsets.only(left: 5.0, bottom: 3),
                            child: Text(
                              'Confirm Password',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Card(
                            elevation: 10,
                            color: Colors.black,
                            child: TextFormField(obscureText: !_isPasswordVisiblee,
                              decoration:  InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide.none),
                                filled: true,
                                fillColor: Colors.white,
                              
                                prefixIcon: Icon(
                                  (Icons.lock),
                                ), suffixIcon: IconButton(
          icon: Icon(
            _isPasswordVisiblee ? Icons.visibility : Icons.visibility_off,
          ),
          onPressed: () {
            setState(() {
              _isPasswordVisiblee = !_isPasswordVisiblee;
            });
          },),
                              ),
                            ),
                          ),
                          Column(
                            children: [
                              const SizedBox(
                                height: 20,
                              ),
                              
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const Text('Disable Station',style: TextStyle(color: Colors.white),),
              const SizedBox(
                width: 20,
              ),
              Switch(
                  value: switchselect,
                  onChanged: (bool? value) {
                    setState(() {
                      switchselect = !switchselect;
                    });
                  })
            ],
          ), const SizedBox(
                                height: 20,
                              ),
                              
                              Container(
                                width: MediaQuery.of(context).size.width,
                                height: 45,
                                child: ElevatedButton(
                                  style: ButtonStyle(
                                      backgroundColor: const MaterialStatePropertyAll(
                                       Colors.black,
                                      ),
                                      textStyle: const MaterialStatePropertyAll(
                                        TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      shape: MaterialStatePropertyAll(
                                          RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10)))),
                                  onPressed: () {},
                                  child: const Text(
                                    "Submit",
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ), const SizedBox(
                                height: 20,
                              ),
                              
                              
                            ],
                          )
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
