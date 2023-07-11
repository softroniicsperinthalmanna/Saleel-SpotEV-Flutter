import 'package:flutter/material.dart';
import 'package:spotev/Station/Formscreens/ForgetPassword/Recovery.dart';
import 'package:spotev/Station/Formscreens/SignUp.dart';
import 'package:spotev/Station/HomeScreen/Homepage.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

bool? isChecked = false;
 bool _isPasswordVisible = false;

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 21, 124, 110),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        // width: double.infinity,
        child: SingleChildScrollView(
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.only(left: 50, right: 50, top: 40),
              child: Center(
                child: Container(
                  //color: Colors.amber,
                  child: Image.asset(
                    "Images/logo.png",
                    fit: BoxFit.cover,
                    height: 100,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Column(
              children: [
                Container(
                  child: const Text(
                    "Sign In",
                    style: TextStyle(
                      fontSize: 33,
                      color: Colors.white,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 45, left: 10, right: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(
                          left: 5.0,
                        ),
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
                        child: TextFormField(
                          decoration: const InputDecoration(
                            enabledBorder:
                                OutlineInputBorder(borderSide: BorderSide.none),
                            filled: true,
                            fillColor: Colors.white,
                            hintText: 'ENTER YOUR EMAIL',
                            prefixIcon: Icon(
                              Icons.mail,
                            ),
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
                            child: TextFormField(                                 obscureText: !_isPasswordVisible,
                         
                              decoration:  InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide.none),
                                filled: true,
                                fillColor: Colors.white,
                                hintText: 'ENTER YOUR PASSWORD',
                                prefixIcon: Icon(
                                  (Icons.lock),
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
                          Column(
                            children: [
                              Container(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(right: 5.0),
                                      child: TextButton(
                                        onPressed: () {
                                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => const RecoveryStation(),));
                                        },
                                        child: const Text(
                                          "Forget Password?",
                                          style: TextStyle(
                                            fontSize: 14,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Row(
                                children: [
                                  Checkbox(
                                      checkColor: Colors.black,
                                      activeColor: Colors.white,
                                      fillColor: const MaterialStatePropertyAll(
                                          Colors.white),
                                      value: isChecked,
                                      onChanged: (value) {
                                        setState(() {
                                          isChecked = value;
                                        });
                                      }),
                                  const Text(
                                    "Remeber me",
                                    style: TextStyle(color: Colors.white),
                                  )
                                ],
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width,
                                height: 45,
                                child: ElevatedButton(
                                  
                                  style: ButtonStyle(
                                      backgroundColor: const MaterialStatePropertyAll(
                                        Colors.white,
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
                                    Navigator.of(context).push(MaterialPageRoute(builder: (context) =>const HomePage() ,));
                                  },
                                  child: const Text(
                                    "LOGIN",
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 21, 124, 110),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 20, top: 10),
                                child: Container(
                                  child: const Text(
                                    "or",
                                    style: TextStyle(
                                      fontSize: 19,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                child: const Text(
                                  "Continue With",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        child: ElevatedButton.icon(
                                            onPressed: () {},
                                            style: ElevatedButton.styleFrom(
                                                backgroundColor: Colors.white,
                                                minimumSize: const Size(165, 50)),
                                            icon: const Icon(
                                              Icons.facebook,
                                              color: Colors.blue,
                                              size: 30,
                                            ),
                                            label: const Text(
                                              "FACEBOOK",
                                              style: TextStyle(
                                                  color: Colors.black),
                                            )),
                                      ),
                                      Container(
                                        height: 50,
                                        width: 165,
                                        child: ElevatedButton(
                                            onPressed: () {},
                                            child: Row(
                                              children: [
                                                Image.asset(
                                                  "Images/Googlee.png",
                                                  fit: BoxFit.cover,
                                                  height: 30,
                                                ),
                                                const Text(
                                                  "Google",
                                                  style: TextStyle(
                                                      fontSize: 17,
                                                      color: Colors.black),
                                                ),
                                              ],
                                            ),
                                            style: ElevatedButton.styleFrom(
                                              backgroundColor: Colors.white,
                                            )),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                              Container(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Text(
                                      "Don't have an account?",
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.white,
                                      ),
                                    ),
                                    TextButton(
                                        onPressed: () {
                                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => const SignUp(),));
                                        },
                                        child: const Text(
                                          "Sign Up",
                                          style: TextStyle(
                                            fontSize: 14,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
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
                  ),
                )
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
