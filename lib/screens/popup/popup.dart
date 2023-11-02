import 'package:flutter/material.dart';

class Popup extends StatelessWidget {
  const Popup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(250, 250, 250, 250),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset('assets/No_internet.png'),
            ],
          ),
        ));
  }
}
