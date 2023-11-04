import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kadu_ngo/business_logic/internet_bloc/internet_bloc.dart';
import 'package:kadu_ngo/business_logic/internet_bloc/internet_state.dart';
import 'package:kadu_ngo/business_logic/login/login_bloc.dart';
import 'package:kadu_ngo/screens/login/login-page.dart';
import 'package:kadu_ngo/screens/register/register.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(child: BlocBuilder<InternetBloc, InternetState>(
        builder: (context, state) {
          if (state is InternetGainedState) {
            return Text('Connected!');
          } else if (state is InternetLostState) {
            return Text("Not Connected");
          } else {
            return Text("Loading...");
          }
        },
      ))),
    );
  }
}

class ButtonsWidget extends StatelessWidget {
  const ButtonsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) =>
                      BlocProvider(create: (context) => SignInBloc())
                  // LoginPage()),
                  ));
            },
            child: Text('Login')),
        ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => SignupPage()),
              );
            },
            child: Text('Signup'))
      ],
    );
  }
}
