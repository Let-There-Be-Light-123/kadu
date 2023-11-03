import 'package:flutter/material.dart';
import 'package:kadu_ngo/screens/login/login-page.dart';
import 'package:kadu_ngo/screens/welcome/welcome.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kadu_ngo/theme/color.dart';
import 'package:kadu_ngo/widgets/custom_radio/custom_radio.dart';
import 'package:kadu_ngo/widgets/input_text/input_text.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  List<bool> selections = [false, true];
  String selectLivingCondition = '';
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
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Expanded(
                child: Column(children: <Widget>[
              Column(
                children: <Widget>[
                  Positioned(
                    top: 10,
                    child: Text(
                      "Register",
                      style: GoogleFonts.poppins(
                        fontSize: 40,
                        color: AppColors.textColorPrimary,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "By Signing in you are agreeing to our",
                    style:
                        GoogleFonts.poppins(fontSize: 15, color: Colors.grey),
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
                ],
              ),
              SingleChildScrollView(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  children: <Widget>[
                    textFieldInput(
                        label: "Social Security Number", obscureText: false),
                    LivingStateSelector(),
                    textFieldInput(label: "Email", obscureText: false),
                    textFieldInput(label: 'Phone', obscureText: false),
                    textFieldInput(label: "Password", obscureText: true),
                    textFieldInput(
                        label: "Confirm Password", obscureText: true),
                  ],
                ),
              ),
              Container(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                          onPressed: () {},
                          child: Text('Remember Password',
                              style: GoogleFonts.poppins(
                                  fontSize: 15, color: Colors.grey))),
                    ],
                  )),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Container(
                  width: 320,
                  child: MaterialButton(
                    minWidth: double.infinity,
                    height: 45,
                    onPressed: () {},
                    color: AppColors.primaryColorOrange,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Text(
                      "Signup",
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              )
              // Flexible(
              //   child: Container(
              //       width: 420,
              //       height: 300,
              //       decoration: BoxDecoration(
              //         image: DecorationImage(
              //             image: AssetImage("assets/login_image.png"),
              //             fit: BoxFit.fitHeight),
              //       )),
              // )
            ]))
          ],
        ),
      ),
    );
  }
}
