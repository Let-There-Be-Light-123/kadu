import 'package:flutter/material.dart';
import 'package:kadu_ngo/screens/splash_screen/splash_screen.dart';
import 'package:kadu_ngo/screens/home/home.dart';

class Root extends StatelessWidget {
  const Root({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SplashScreen(),
    );
  }
}
