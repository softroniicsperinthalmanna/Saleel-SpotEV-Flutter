import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class Offers extends StatefulWidget {
  const Offers({super.key});

  @override
  State<Offers> createState() => _OffersState();
}

class _OffersState extends State<Offers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading: Icon(Icons.arrow_back),
        centerTitle: true,
        title: const Text('Offers'),
        toolbarHeight: 80,
        backgroundColor: const Color(0xff5A5AD2),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        )),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Container(
              //   height: 150,
              //   width: MediaQuery.of(context).size.width,
              //   decoration: BoxDecoration(
              //       color: Color(0xff5A5AD2),
              //       borderRadius: BorderRadius.only(
              //           bottomLeft: Radius.circular(30),
              //           bottomRight: Radius.circular(30)
              //       )
              //   ),
              //   child: Center(child: Text('Offers',style: booking,textAlign: TextAlign.center,)),
              // ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Row(children: [colorizeAnimation()]),
              ),
              Container(
                height: 120,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15)),
                    //color: Colors.amber,
                    image: DecorationImage(
                        image: AssetImage('Images/offer5.png'),
                        fit: BoxFit.cover)),
              ),
              const SizedBox(
                height: 10,
              ),
             
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 130,
                    width: 165,
                    decoration: const BoxDecoration(
                        //  color: Colors.amber,
                        image: DecorationImage(
                            image: AssetImage('Images/offer1.png'),
                            fit: BoxFit.cover)),
                  ),
                  Container(
                    height: 130,
                    width: 165,
                    decoration: const BoxDecoration(
                        // color: Colors.amber,
                        image: DecorationImage(
                            image: AssetImage('Images/offer2.png'),
                            fit: BoxFit.cover)),
                  ),
                ],
              ),
              const SizedBox(
                height: 7,
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Row(
                  children: [
                  colorizeAnimation(),
                 
                ]),
              ),
              Container(
                height: 280,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                    // color: Colors.amber,
                    image: const DecorationImage(
                        image: AssetImage('Images/offer3.png'),
                        fit: BoxFit.cover),
                    border: Border.all(color: Colors.black)),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Row(children: [colorizeAnimation1()]),
              ),
              Container(
                height: 80,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                    //   color: Colors.amber,
                    image: DecorationImage(
                        image: AssetImage('Images/offer4.png'),
                        fit: BoxFit.cover)),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget colorizeAnimation() {
    const colorizeColors = [
      Colors.purple,
      Colors.blue,
      Colors.yellow,
      Colors.red,
    ];
    const colorizeTextStyle = TextStyle(fontSize: 18,fontWeight: FontWeight.bold);
    return Container(
      child: AnimatedTextKit(
        animatedTexts: [
          ColorizeAnimatedText('ChargeBy >>',
              textStyle: colorizeTextStyle, colors: colorizeColors),
             
        ],
        repeatForever: true,
      ),
    );
  } Widget colorizeAnimation1() {
    const colorizeColors = [
      Colors.purple,
      Colors.blue,
      Colors.yellow,
      Colors.red,
    
    ];
    const colorizeTextStyle = TextStyle(fontSize: 18,fontWeight: FontWeight.bold);
    // ignore: avoid_unnecessary_containers
    return Container(
      child: AnimatedTextKit(
        animatedTexts: [
          ColorizeAnimatedText('YX VestBy >>',
              textStyle: colorizeTextStyle, colors: colorizeColors),
        ],
        repeatForever: true,
        
      ),
    );
  }
}
