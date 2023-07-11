import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:spotev/User/Formscreens/Loginscreen.dart';
import 'package:spotev/User/Formscreens/OTPverification.dart';

class Registration extends StatefulWidget {
  const Registration({super.key});
      
  @override
  State<Registration> createState() => _RegistrationState();
  
}
        bool _isPasswordVisible = false;
         bool _isPasswordVisiblee = false;

class _RegistrationState extends State<Registration> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        // width: double.infinity,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(18, 18, 18, 0),
            child: Column(children: [
              const SizedBox(
                height: 20,
              ),
              Column(
                children: [
                  Container(
                    child: const Text(
                      "Sign Up",
                      style: TextStyle(
                        fontSize: 33,
                        color: Color.fromARGB(255, 99, 49, 216),
                      ),
                    ),
                  ),
                  const SizedBox(height: 50),
                  Column(
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
                            enabledBorder:
                                const OutlineInputBorder(borderSide: BorderSide.none),
                            filled: true,
                            fillColor: Colors.grey[350],
                            hintText: 'ENTER YOUR NAME',
                            prefixIcon: const Icon(
                              Icons.person_outline,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Padding(
                        padding: EdgeInsets.only(left: 5.0, bottom: 3),
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
                            enabledBorder:
                                const OutlineInputBorder(borderSide: BorderSide.none),
                            filled: true,
                            fillColor: Colors.grey[350],
                            hintText: 'ENTER YOUR NUMBER',
                            prefixIcon: const Icon(
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
                            color: Color.fromARGB(255, 99, 49, 216),
                          ),
                        ),
                      ),
                      Card(
                        elevation: 10,
                        color: Colors.black,
                        child: TextFormField(
                          decoration: InputDecoration(
                            enabledBorder:
                                const OutlineInputBorder(borderSide: BorderSide.none),
                            filled: true,
                            fillColor: Colors.grey[350],
                            hintText: 'ENTER YOUR EMAIL',
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
                        padding: EdgeInsets.only(left: 5.0, top: 3),
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
                        child: TextFormField(  obscureText: !_isPasswordVisible,
                          decoration: InputDecoration(
                            enabledBorder:
                                const OutlineInputBorder(borderSide: BorderSide.none),
                            filled: true,
                            fillColor: Colors.grey[350],
                            hintText: 'ENTER YOUR PASSWORD',
                            prefixIcon: const Icon(
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
                                color: Color.fromARGB(255, 99, 49, 216),
                              ),
                            ),
                          ),
                          Card(
                            elevation: 10,
                            color: Colors.black,
                            child: TextFormField(  obscureText: !_isPasswordVisiblee,
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
              _isPasswordVisiblee = !_isPasswordVisiblee;
            });
          },),
                              ),
                            ),
                          ),
                          Column(
                            children: [
                              const SizedBox(
                                height: 40,
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width,
                                height: 45,
                                child: ElevatedButton(
                                  style: ButtonStyle(
                                      backgroundColor: const MaterialStatePropertyAll(
                                        Color.fromARGB(255, 99, 49, 216),
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
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const OTPverification()));
                                  },
                                  child: const Text("Register"),
                                ),
                              ),
                              Container(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Text(
                                      "Have an account?",
                                      style: TextStyle(
                                          fontSize: 14, color: Colors.blueGrey),
                                    ),
                                    TextButton(
                                        onPressed: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      const Login()));
                                        },
                                        child: const Text(
                                          "Sign In",
                                          style: TextStyle(
                                            fontSize: 14,
                                            color: Color.fromARGB(
                                                255, 99, 49, 216),
                                          ),
                                        ))
                                  ],
                                ),
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
