import 'package:flutter/material.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}
  bool _isPasswordVisiblee = false;
  bool _isPasswordVisiblee1 = false;
  bool _isPasswordVisiblee2 = false;

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
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40),
                  ),
                  color: Colors.indigo),
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
        const SizedBox(
          height: 55,
        ),
        const Text(
          "Change ProfilePicture",
          style: TextStyle(fontSize: 15),
        ),
        Padding(
            padding: const EdgeInsets.all(10),
            child: Padding(
              padding: const EdgeInsets.all(4),
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
                              const Padding(
                                padding: EdgeInsets.only(left: 5.0),
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
                                    enabledBorder: const OutlineInputBorder(
                                        borderSide: BorderSide.none),
                                    filled: true,
                                    fillColor: Colors.grey[350],
                                    hintText: 'MOHAMMED SALEEL',
                                    prefixIcon: const Icon(
                                      Icons.person_outline,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 10),
                              const Padding(
                                padding:
                                    EdgeInsets.only(left: 5.0, bottom: 3),
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
                                    enabledBorder: const OutlineInputBorder(
                                        borderSide: BorderSide.none),
                                    filled: true,
                                    fillColor: Colors.grey[350],
                                    hintText: '987654321',
                                    prefixIcon: const Icon(
                                      Icons.call,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 10),
                              const Padding(
                                padding:
                                    EdgeInsets.only(left: 5.0, top: 3),
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
                                child: TextFormField(obscureText: !_isPasswordVisiblee,
                                  decoration: InputDecoration(
                                    enabledBorder: const OutlineInputBorder(
                                        borderSide: BorderSide.none),
                                    filled: true,
                                    fillColor: Colors.grey[350],
                                    hintText: 'Apple123@gmail.com',
                                    prefixIcon: const Icon(
                                      Icons.mail,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Padding(
                                padding:
                                    EdgeInsets.only(left: 5.0, top: 3),
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
                                child: TextFormField(obscureText: !_isPasswordVisiblee,
                                  decoration: InputDecoration(
                                    enabledBorder: const OutlineInputBorder(
                                        borderSide: BorderSide.none),
                                    filled: true,
                                    fillColor: Colors.grey[350],
                                    hintText: 'ENTER YOUR PASSWORD',
                                    prefixIcon: const Icon(
                                      Icons.lock,
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
                              const SizedBox(
                                height: 10,
                              ),
                              const Padding(
                                padding:
                                    EdgeInsets.only(left: 5.0, bottom: 3),
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
                                child: TextFormField(obscureText: !_isPasswordVisiblee1,
                                  decoration: InputDecoration(
                                    enabledBorder: const OutlineInputBorder(
                                        borderSide: BorderSide.none),
                                    filled: true,
                                    fillColor: Colors.grey[350],
                                    hintText: 'NEW PASSWORD',
                                    prefixIcon: const Icon(
                                      (Icons.lock),
                                    ), suffixIcon: IconButton(
          icon: Icon(
            _isPasswordVisiblee ? Icons.visibility : Icons.visibility_off,
          ),
          onPressed: () {
            setState(() {
              _isPasswordVisiblee1 = !_isPasswordVisiblee1;
            });
          },),
                                  ),
                                ),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(
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
                                    child: TextFormField(obscureText: !_isPasswordVisiblee2,
                                      decoration: InputDecoration(
                                        enabledBorder: const OutlineInputBorder(
                                            borderSide: BorderSide.none),
                                        filled: true,
                                        fillColor: Colors.grey[350],
                                        hintText: 'CONFIRM PASSWORD',
                                        prefixIcon: const Icon(
                                          (Icons.lock),
                                        ), suffixIcon: IconButton(
          icon: Icon(
            _isPasswordVisiblee ? Icons.visibility : Icons.visibility_off,
          ),
          onPressed: () {
            setState(() {
              _isPasswordVisiblee2 = !_isPasswordVisiblee2;
            });
          },),
                                      ),
                                    ),
                                  ),
                                  Column(children: [
                                    const SizedBox(
                                      height: 40,
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width,
                                      height: 45,
                                      child: ElevatedButton(
                                        style: ButtonStyle(
                                            backgroundColor:
                                                const MaterialStatePropertyAll(
                                              Color.fromARGB(255, 99, 49, 216),
                                            ),
                                            textStyle: const MaterialStatePropertyAll(
                                              TextStyle(
                                                fontSize: 17,
                                              ),
                                            ),
                                            shape: MaterialStatePropertyAll(
                                                RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10)))),
                                        onPressed: () {},
                                        child: const Text("Edit Profile",style: TextStyle(fontWeight: FontWeight.bold),),
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
