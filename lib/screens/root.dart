import 'package:flutter/material.dart';
import 'package:kadu_ngo/screens/login/login-page.dart';

class Root extends StatelessWidget {
  const Root({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LoginPage(),
    );
  }
}
