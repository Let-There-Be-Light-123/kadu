import 'package:flutter/material.dart';
import 'package:kadu_ngo/screens/root.dart';
import 'package:kadu_ngo/screens/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kadu_ngo/screens/login/login-page.dart';
import 'package:kadu_ngo/screens/popup/popup.dart';
// import 'splash_screen.dart';
// import 'login/login_page.dart';
// import 'login/login_bindings.dart';

void main() {
  runApp(HotelBookingApp());
}

class HotelBookingApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
    );
  }
}
