import 'package:flutter/material.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:kadu_ngo/screens/popup/popup.dart';
import 'package:kadu_ngo/screens/register/register.dart';
import 'package:kadu_ngo/screens/welcome/welcome.dart';
import 'package:kadu_ngo/widgets/bottom_navigation/bottom_navigation.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 1), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => Popup()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Display your loading GIF animation using Image.asset.
            Image.asset('assets/home.gif'),
            SizedBox(height: 16.0),
            Text('Your App Name', style: TextStyle(fontSize: 24.0)),
          ],
        ),
      ),
    );
  }
}
