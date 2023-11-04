import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kadu_ngo/business_logic/login/login_bloc.dart';
import 'package:kadu_ngo/business_logic/login/login_event.dart';
import 'package:kadu_ngo/business_logic/login/login_state.dart';
import 'package:kadu_ngo/screens/welcome/welcome.dart';
import 'package:kadu_ngo/theme/color.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kadu_ngo/widgets/input_text/input_text.dart';

class LoginPage extends StatelessWidget {
  bool rememberPassword = false;
  TextEditingController emailController = TextEditingController();
  TextEditingController passWordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: AppColors.backgroundColorDefault,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.backgroundColorDefault,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Expanded(
                child: Column(
                    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                  Column(
                    children: <Widget>[
                      Text(
                        "Login",
                        style: GoogleFonts.poppins(
                          fontSize: 40,
                          color: AppColors.textColorPrimary,
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        "By Signing in you are agreeing to our",
                        style: GoogleFonts.poppins(
                            fontSize: 15, color: Colors.grey),
                      ),
                      TextButton(
                        onPressed: () {
                          // redirect to terms and Conditions
                        },
                        child: Text(
                          'Terms and Privacy Policay',
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w400,
                              fontSize: 15,
                              color: AppColors.textColorPrimary),
                        ),
                      ),
                      Container(
                          child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          TextButton(
                              onPressed: () {
                                // Select Default for the login page
                                //underline the button when clicked
                              },
                              child: Text(
                                'Login',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 15,
                                    height: 2,
                                    color: AppColors.primaryColorOrange),
                              )),
                          TextButton(
                              onPressed: () {
                                // Select Default for the login page
                              },
                              child: Text(
                                'Register',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 15,
                                    color: AppColors.textColorPrimary),
                              ))
                        ],
                      ))
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40),
                    child: Column(
                      children: <Widget>[
                        // textFieldInput(label: "Email"),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              height: 60,
                              padding: EdgeInsets.symmetric(vertical: 10),
                              child: TextField(
                                controller: emailController,
                                onChanged: (val) {
                                  BlocProvider.of<SignInBloc>(context).add(
                                      SigninEmailChangedEvent(
                                          emailController.text));
                                },
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.all(10.0),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5)),
                                  hintText: 'Email',
                                  hintStyle: GoogleFonts.poppins(
                                      fontSize: 15, color: Colors.grey),
                                  suffixIcon: Icon(Icons.mail),
                                ),
                              ),
                            ),
                            SizedBox(height: 10),
                            BlocBuilder<SignInBloc, SignInState>(
                              builder: (context, state) {
                                if (state is SigninErrorState) {
                                  return Text("Enter Valid Email");
                                } else
                                  return Container();
                              },
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              height: 60,
                              padding: EdgeInsets.symmetric(vertical: 10),
                              child: TextField(
                                controller: emailController,
                                onChanged: (val) {
                                  BlocProvider.of<SignInBloc>(context).add(
                                      SigninEmailChangedEvent(
                                          passWordController.text));
                                },
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.all(10.0),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5)),
                                  hintText: 'Password',
                                  hintStyle: GoogleFonts.poppins(
                                      fontSize: 15, color: Colors.grey),
                                  suffixIcon: Icon(Icons.lock_outline),
                                ),
                              ),
                            ),
                            SizedBox(height: 10),
                            BlocBuilder<SignInBloc, SignInState>(
                              builder: (context, state) {
                                if (state is SigninErrorState) {
                                  return Text("Enter Valid Password");
                                } else
                                  return Container();
                              },
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                      padding: EdgeInsets.symmetric(horizontal: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // CheckboxListTile(
                          //     title: Text('Remember Password',
                          //         style: GoogleFonts.poppins(
                          //             fontSize: 15, color: Colors.grey)),
                          //     value: rememberPassword,
                          //     onChanged: (bool? value) {
                          //       //update when checkbox is toggled
                          //       // setState(() {
                          //       rememberPassword = value ?? false;
                          //       // });
                          //     }),
                          TextButton(
                              onPressed: () {},
                              child: Text('Remember Password',
                                  style: GoogleFonts.poppins(
                                      fontSize: 15, color: Colors.grey))),
                          TextButton(
                              onPressed: () {},
                              child: Text('Remember Password',
                                  style: GoogleFonts.poppins(
                                      fontSize: 15, color: Colors.grey)))
                        ],
                      )),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40),
                    child: BlocBuilder<SignInBloc, SignInState>(
                        builder: (context, state) {
                      return Container(
                        width: 320,
                        child: MaterialButton(
                          minWidth: double.infinity,
                          height: 45,
                          onPressed: () {},
                          color: (state is SigninValidState)
                              ? AppColors.primaryColorOrange
                              : Colors.grey,
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Text(
                            "Login",
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      );
                    }),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      Text("Or sign in with:"),
                      SizedBox(height: 15),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 40),
                        child: Container(
                          width: 150,
                          child: MaterialButton(
                              minWidth: double.infinity,
                              height: 45,
                              onPressed: () {},
                              color: AppColors.googleButtonColor,
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: RichText(
                                text: TextSpan(children: [
                                  WidgetSpan(
                                      child: Image(
                                    image: AssetImage('assets/google_logo.png'),
                                    height: 20,
                                    width: 20,
                                  )),
                                  TextSpan(
                                      text: 'Google',
                                      style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 18,
                                        color: AppColors.textColorPrimary,
                                      ))
                                ]),
                              )),
                        ),
                      ),
                      Flexible(
                        child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: 300,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("assets/login_image.png"),
                                  fit: BoxFit.fitHeight),
                            )),
                      )
                    ],
                  )
                ]))
          ],
        ),
      ),
    );
  }

  // void setState(Null Function() param0) {}
}
