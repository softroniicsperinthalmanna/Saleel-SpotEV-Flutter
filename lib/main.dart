import 'package:flutter/material.dart';

//import 'ChargingHistory.dart';
//import 'Complaints.dart';
//import 'Favorites.dart';
//import 'MyBookings.dart';
import 'Profile/Wallet.dart';
//import 'StationsShow.dart';
//import 'Tabbar_mybookings.dart';
//import 'package:spotev/Formscreens/ForgetPassword/Recovery.dart';

//import 'package:spotev/Confirmbooking.dart';

//import 'Formscreens/ForgetPassword/NewPassword.dart';
//import 'Formscreens/ForgetPassword/Recovery.dart';
import 'Formscreens/ForgetPassword/Verify.dart';

//import 'Homescreen/Offers.dart';
//import 'Payment.dart';

//import 'Formscreens/OTPsuccessful.dart';
//import 'Homescreen/Homepage.dart';
//import 'Formscreens/OTPverification.dart';
//import 'package:spotev/Formscreens/Modulescreen.dart';

//import 'Formscreens/Loginscreen.dart';
//import 'ManageEV.dart';

//import 'EditProfile.dart';
//import 'Profile.dart';
//import 'TripPlanner.dart';
//import 'Formscreens/Registrationscreen.dart';
//import 'ChargingSessionSummary.dart';
//import 'PaymentHistory.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "SpotEV",
      debugShowCheckedModeBanner: false,
      home: Verify(),
    );
  }
}
