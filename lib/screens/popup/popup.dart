import 'package:flutter/material.dart';

class Popup extends StatelessWidget {
  const Popup({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.grey,
      body: Center(
          child: Text(
        'Error',
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
      )),
    );
  }
}
