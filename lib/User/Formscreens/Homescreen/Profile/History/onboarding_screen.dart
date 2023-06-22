import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class IndroScreen extends StatefulWidget {
  const IndroScreen({super.key});

  @override
  State<IndroScreen> createState() => _IndroScreenState();
}

class _IndroScreenState extends State<IndroScreen> {
  List<PageViewModel> getPages() {
    return [
      PageViewModel(
        image: Padding(
          padding: const EdgeInsets.only(top: 100.0),
          child: Image.asset('Images/wallet.jpeg'),
        ),
        title: 'Wallet',
        body:
            'Add money to your SpotEV wallet and charge your vehicle hassle free',
      ),
      PageViewModel(
        image: Image.asset('Images/Communityimg.png'),
        title: 'Community',
        body: 'Please Choose your Payment Method',
      ),
      PageViewModel(
        image: Image.asset('Images/Choose Payment method.jpg'),
        title: 'Choose Payment method',
        body: 'Please Choose your Payment Method',
      ),
      PageViewModel(
        image: Image.asset('Images/trip plan.webp'),
        title: 'Trip Plan',
        body: 'Please Choose your Payment Method',
      ),
      PageViewModel(
        image: Image.asset('Images/Discover1.png'),
        title: 'Discover',
        body: 'Please Choose your Station',
      ),
      PageViewModel(
        image: Image.asset('Images/filter.gif'),
        title: 'Filter Stations',
        body: 'Please Choose your Station',
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: IntroductionScreen(
      done: Text(
        "Done",
        style: TextStyle(color: Colors.black),
      ),
      next: Icon(
        Icons.arrow_circle_right,
        color: Colors.indigo,
        size: 30,
      ),
      onDone: () {},
      dotsFlex: 3,
      globalBackgroundColor: Colors.white,
      pages: getPages(),
    ));
  }
}
