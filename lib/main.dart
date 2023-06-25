import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:spotev/Station/Offers.dart';
import 'package:spotev/study.dart';

import 'package:spotev/Station/StationList.dart';
import 'User/Formscreens/Homescreen/Profile/Manage Ev/Select_Vehicle.dart';
import 'Station/Add slots.dart';
import 'Station/Bookings.dart';
import 'Station/Homepage.dart';
import 'User/Formscreens/ForgetPassword/NewPassword.dart';
import 'User/Formscreens/ForgetPassword/Recovery.dart';
import 'User/Formscreens/ForgetPassword/Verify.dart';
import 'User/Formscreens/Homescreen/Home/Homepage.dart';
import 'User/Formscreens/Homescreen/Offers/Offers.dart';
import 'User/Formscreens/Homescreen/Profile.dart';
import 'User/Formscreens/Homescreen/Profile/Community/Community.dart';
import 'User/Formscreens/Homescreen/Profile/Community/Community2.dart';
import 'User/Formscreens/Homescreen/Profile/Complaints/Complaints.dart';
import 'User/Formscreens/Homescreen/Profile/Editprofile/EditProfile.dart';
import 'User/Formscreens/Homescreen/Profile/Favorites/Favorites.dart';
import 'User/Formscreens/Homescreen/Profile/History/ChargingHistory.dart';
import 'User/Formscreens/Homescreen/Profile/History/Payment.dart';
import 'User/Formscreens/Homescreen/Profile/Manage Ev/ManageEV.dart';
import 'User/Formscreens/Homescreen/Profile/Manage Ev/BrandView/2-Whealer.dart';
import 'User/Formscreens/Homescreen/Profile/Manage Ev/BrandView/3-Whealer.dart';
import 'User/Formscreens/Homescreen/Profile/Manage Ev/BrandView/All.dart';
import 'User/Formscreens/Homescreen/Profile/Manage Ev/BrandView/Audi.dart';
import 'User/Formscreens/Homescreen/Profile/Manage Ev/BrandView/BMW.dart';
import 'User/Formscreens/Homescreen/Profile/Manage Ev/BrandView/BYD.dart';
import 'User/Formscreens/Homescreen/Profile/Manage Ev/BrandView/Citroen.dart';
import 'User/Formscreens/Homescreen/Profile/Manage Ev/BrandView/Hyundai.dart';
import 'User/Formscreens/Homescreen/Profile/Manage Ev/BrandView/JBM.dart';
import 'User/Formscreens/Homescreen/Profile/Manage Ev/BrandView/Jaguar.dart';
import 'User/Formscreens/Homescreen/Profile/Manage Ev/BrandView/Kia.dart';
import 'User/Formscreens/Homescreen/Profile/Manage Ev/BrandView/MG.dart';
import 'User/Formscreens/Homescreen/Profile/Manage Ev/BrandView/Mahindra.dart';
import 'User/Formscreens/Homescreen/Profile/Manage Ev/BrandView/Marcedes.dart';
import 'User/Formscreens/Homescreen/Profile/Manage Ev/BrandView/MiniCooper.dart';
import 'User/Formscreens/Homescreen/Profile/Manage Ev/BrandView/Tata.dart';
import 'User/Formscreens/Homescreen/Profile/Manage Ev/BrandView/Tesla.dart';
import 'User/Formscreens/Homescreen/Profile/Manage Ev/BrandView/Volvo.dart';
import 'User/Formscreens/Homescreen/Profile/Manage Ev/Select_Vehicle.dart';
import 'User/Formscreens/Homescreen/Profile/MyBookings/MyBookings.dart';
import 'User/Formscreens/Homescreen/Profile/MyBookings/Tabbar_mybookings.dart';
import 'User/Formscreens/Homescreen/Profile/Wallet/Wallet.dart';
import 'User/Formscreens/Homescreen/Stations/Confirmbooking.dart';
import 'User/Formscreens/Homescreen/Stations/StationsShow.dart';
import 'User/Formscreens/OTPsuccessful.dart';
import 'Station/Login.dart';
import 'Station/SignUp.dart';
import 'Station/Slots.dart';
import 'User/Formscreens/Homescreen/Profile/History/onboarding_screen.dart';
import 'User/Formscreens/Homescreen/Profile/History/ChargingSessionSummary.dart';
import 'User/Formscreens/Homescreen/Profile/History/PaymentHistory.dart';
import 'User/Formscreens/Homescreen/Profile/Trips/TripPlanner.dart';
import 'User/Formscreens/Loginscreen.dart';
import 'User/Formscreens/Modulescreen.dart';
import 'User/Formscreens/OTPverification.dart';
import 'User/Formscreens/Registrationscreen.dart';

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
        home: AnimatedSplashScreen(
          splash: Image.asset(
            "Images/logo.png",
            fit: BoxFit.cover,
          ),
          nextScreen: IndroScreen(),
          splashTransition: SplashTransition.rotationTransition,
          duration: 5000,
          splashIconSize: 80,
        ));
  }
}
