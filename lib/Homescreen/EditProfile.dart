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
      child: Column(
        children: [
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
                    child: TextFormField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          labelText: "Name",
                          prefixIcon: Icon(Icons.password),
                          labelStyle: TextStyle(color: Colors.blue),
                          filled: true,
                          fillColor: Colors.white,
                          hintText: "Enter Your Email"),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 40),
                    child: TextFormField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          labelText: "Name",
                          prefixIcon: Icon(Icons.password),
                          labelStyle: TextStyle(color: Colors.blue),
                          filled: true,
                          fillColor: Colors.white,
                          hintText: "Enter Your Email"),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 40),
                    child: TextFormField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          labelText: "Name",
                          prefixIcon: Icon(Icons.password),
                          labelStyle: TextStyle(color: Colors.blue),
                          filled: true,
                          fillColor: Colors.white,
                          hintText: "Enter Your Email"),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 40),
                    child: TextFormField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          labelText: "Name",
                          prefixIcon: Icon(Icons.password),
                          labelStyle: TextStyle(color: Colors.blue),
                          filled: true,
                          fillColor: Colors.white,
                          hintText: "Enter Your Email"),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: TextFormField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          labelText: "Name",
                          prefixIcon: Icon(Icons.password),
                          labelStyle: TextStyle(color: Colors.blue),
                          filled: true,
                          fillColor: Colors.white,
                          hintText: "Enter Your Email"),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 18.0),
                    child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(
                            Color.fromARGB(255, 129, 6, 160),
                          ),
                          minimumSize: MaterialStatePropertyAll(
                            Size(400, 50),
                          ),
                          textStyle: MaterialStatePropertyAll(
                            TextStyle(
                                fontSize: 17, fontWeight: FontWeight.bold),
                          ),
                          shape: MaterialStatePropertyAll(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(0)))),
                      onPressed: () {},
                      child: Text("Edit Profile"),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    ));
  }
}
