import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:spotev/Station/HomeScreen/View%20OtherStations/OverViewstation.dart';
import 'package:spotev/Station/HomeScreen/View%20OtherStations/Reviewstation.dart';
import 'package:spotev/Station/Formscreens/Login.dart';
import 'package:spotev/Station/Formscreens/SignUp.dart';
import 'package:spotev/Station/HomeScreen/Bookings/Bookings.dart';
import 'package:spotev/Station/HomeScreen/Homepage.dart';
import 'package:spotev/Station/HomeScreen/ManageStation/Add%20slots.dart';
import 'package:spotev/Station/HomeScreen/ManageStation/Slots.dart';
import 'package:spotev/Station/HomeScreen/Offer/Offers.dart';
import 'package:spotev/Station/HomeScreen/View%20OtherStations/OverViewstation.dart';
import 'package:spotev/Station/HomeScreen/View%20OtherStations/Reviewstation.dart';
import 'package:spotev/Station/HomeScreen/View%20OtherStations/postReviewstation.dart';
import 'package:spotev/Station/HomeScreen/View%20OtherStations/stationdetailscreen.dart';
import 'package:spotev/User/Formscreens/Homescreen/Stations/Book%20A%20Section.dart';
import 'package:spotev/User/Formscreens/Homescreen/Stations/ChargingSessionSummary.dart';
import 'package:spotev/User/Formscreens/Homescreen/Stations/OverView.dart';
import 'package:spotev/User/Formscreens/Homescreen/Stations/StationPhotos.dart';
import 'package:spotev/User/Formscreens/Homescreen/Stations/postReview.dart';


import 'package:spotev/Station/StationList.dart';
import 'User/Formscreens/Homescreen/Profile/Manage Ev/Select_Vehicle.dart';
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
import 'User/Formscreens/Homescreen/Stations/Payment.dart';
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
import 'User/Formscreens/Homescreen/Profile/History/onboarding_screen.dart';
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
        home:
        AnimatedSplashScreen(
          splash: Image.asset(
            "Images/logo.png",
            fit: BoxFit.cover,
          ),
          nextScreen: IndroScreen(),
          splashTransition: SplashTransition.rotationTransition,
          duration: 5000,
          splashIconSize: 80,
        )
        );
  }
}
