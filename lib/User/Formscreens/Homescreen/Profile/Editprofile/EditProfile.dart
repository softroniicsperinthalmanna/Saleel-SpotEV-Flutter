import 'package:flutter/material.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(children: [
        Stack(
          clipBehavior: Clip.none,
          alignment: Alignment.center,
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 5,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40),
                  ),
                  color: Colors.blueAccent),
            ),
            Positioned(
              bottom: -50,
              child: InkWell(
                child: ClipOval(
                  child: ClipRRect(
                    child: Image.asset(
                      "Images/ProfiePic.png",
                      height: 120,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
        SizedBox(
          height: 55,
        ),
        Text(
          "Change ProfilePicture",
          style: TextStyle(fontSize: 15),
        ),
        Padding(
            padding: EdgeInsets.all(10),
            child: Padding(
              padding: EdgeInsets.all(4),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 50.0,
                      bottom: 40,
                    ),
                    child: SingleChildScrollView(
                      child: Container(
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 5.0),
                                child: Text(
                                  'User Name',
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Color.fromARGB(255, 99, 49, 216),
                                  ),
                                ),
                              ),
                              Card(
                                elevation: 10,
                                color: Colors.black,
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    //  border: InputBorder.none,
                                    enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide.none),
                                    filled: true,
                                    fillColor: Colors.grey[350],
                                    hintText: 'MOHAMMED SALEEL',
                                    prefixIcon: Icon(
                                      Icons.person_outline,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 10),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 5.0, bottom: 3),
                                child: Text(
                                  'Mobile Number',
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Color.fromARGB(255, 99, 49, 216),
                                  ),
                                ),
                              ),
                              Card(
                                elevation: 10,
                                color: Colors.black,
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide.none),
                                    filled: true,
                                    fillColor: Colors.grey[350],
                                    hintText: '987654321',
                                    prefixIcon: Icon(
                                      Icons.call,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 10),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 5.0, top: 3),
                                child: Text(
                                  'Email',
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Color.fromARGB(255, 99, 49, 216),
                                  ),
                                ),
                              ),
                              Card(
                                elevation: 10,
                                color: Colors.black,
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide.none),
                                    filled: true,
                                    fillColor: Colors.grey[350],
                                    hintText: 'Apple123@gmail.com',
                                    prefixIcon: Icon(
                                      Icons.mail,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 5.0, top: 3),
                                child: Text(
                                  'Password',
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Color.fromARGB(255, 99, 49, 216),
                                  ),
                                ),
                              ),
                              Card(
                                elevation: 10,
                                color: Colors.black,
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide.none),
                                    filled: true,
                                    fillColor: Colors.grey[350],
                                    hintText: 'ENTER YOUR PASSWORD',
                                    prefixIcon: Icon(
                                      Icons.lock,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 5.0, bottom: 3),
                                child: Text(
                                  'New Password',
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Color.fromARGB(255, 99, 49, 216),
                                  ),
                                ),
                              ),
                              Card(
                                elevation: 10,
                                color: Colors.black,
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide.none),
                                    filled: true,
                                    fillColor: Colors.grey[350],
                                    hintText: 'NEW PASSWORD',
                                    prefixIcon: Icon(
                                      (Icons.lock),
                                    ),
                                  ),
                                ),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 5.0, bottom: 3),
                                    child: Text(
                                      'Confirm Password',
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: Color.fromARGB(255, 99, 49, 216),
                                      ),
                                    ),
                                  ),
                                  Card(
                                    elevation: 10,
                                    color: Colors.black,
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                        enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide.none),
                                        filled: true,
                                        fillColor: Colors.grey[350],
                                        hintText: 'CONFIRM PASSWORD',
                                        prefixIcon: Icon(
                                          (Icons.lock),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Column(children: [
                                    SizedBox(
                                      height: 40,
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width,
                                      height: 45,
                                      child: ElevatedButton(
                                        style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStatePropertyAll(
                                              Color.fromARGB(255, 99, 49, 216),
                                            ),
                                            textStyle: MaterialStatePropertyAll(
                                              TextStyle(
                                                fontSize: 18,
                                              ),
                                            ),
                                            shape: MaterialStatePropertyAll(
                                                RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10)))),
                                        onPressed: () {},
                                        child: Text("Edit Profile"),
                                      ),
                                    ),
                                  ])
                                ],
                              ),
                            ]),
                      ),
                    ),
                  )
                ],
              ),
            ))
      ])),
    );
  }
}
