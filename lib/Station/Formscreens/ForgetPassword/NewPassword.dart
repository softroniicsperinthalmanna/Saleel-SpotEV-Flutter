import 'package:flutter/material.dart';
import 'package:spotev/Station/Formscreens/Login.dart';

class NewPasswordStation extends StatefulWidget {
  const NewPasswordStation({super.key});

  @override
  State<NewPasswordStation> createState() => _NewPasswordStationState();
}

class _NewPasswordStationState extends State<NewPasswordStation> {
          bool _isPasswordVisible = false;
 bool _isPasswordVisiblee = false;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        //leading: Icon(Icons.arrow_back),
        centerTitle: true,
        elevation: 3,
        backgroundColor: const Color.fromARGB(255, 99, 49, 216),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        )),
        toolbarHeight: 70,
        title: const Text(
          "Forget Password",
          style: TextStyle(fontSize: 18),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(children: [
            const SizedBox(
              height: 150,
            ),
            const Text(
              "Enter New Password",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 99, 49, 216),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Your new password must be different",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
            ),
            const Text(
              "from previously used password",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: Card(
                  elevation: 10,
                  color: Colors.black,
                  child: TextFormField(
                      obscureText: !_isPasswordVisible,
                    decoration: InputDecoration(
                      enabledBorder:
                          const OutlineInputBorder(borderSide: BorderSide.none),
                      filled: true,
                      fillColor: Colors.grey[350],
                      
                      hintText: 'New Password',
                      
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
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: Card(
                  elevation: 10,
                  color: Colors.black,
                  child: TextFormField(
                      obscureText: !_isPasswordVisiblee,
                    decoration: InputDecoration(
                      enabledBorder:
                          const OutlineInputBorder(borderSide: BorderSide.none),
                      filled: true,
                      fillColor: Colors.grey[350],
                      hintText: 'Confirm Password',
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
              ),
            ),
            const SizedBox(
              height: 45,
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 45,
                child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: const MaterialStatePropertyAll(
                        Color.fromARGB(255, 99, 49, 216),
                      ),
                      textStyle: const MaterialStatePropertyAll(
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)))),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const LoginScreen()));
                  },
                  child: const Text("Continue"),
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
