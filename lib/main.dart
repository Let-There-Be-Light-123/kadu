import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
// import 'package:kadu_ngo/widgets/otp/otp.dart';
import 'package:kadu_ngo/routes/generated_routes.dart';
// import 'package:kadu_ngo/screens/register/register.dart';
// import 'package:kadu_ngo/screens/root.dart';
// import 'package:kadu_ngo/screens/splash_screen/splash_screen.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:kadu_ngo/screens/login/login-page.dart';
// import 'package:kadu_ngo/screens/popup/popup.dart';
// import 'splash_screen.dart';
// import 'login/login_page.dart';
// import 'login/login_bindings.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(HotelBookingApp());
}

class HotelBookingApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: Otp(),
      initialRoute: '/',
      onGenerateRoute: RouteGenerator().generateRoute,
    );
  }
}
