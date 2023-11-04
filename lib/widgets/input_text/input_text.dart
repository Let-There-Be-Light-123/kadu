import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kadu_ngo/business_logic/login/login_bloc.dart';
import 'package:kadu_ngo/business_logic/login/login_event.dart';
import 'package:kadu_ngo/business_logic/login/login_state.dart';

Widget textFieldInput({label, obscureText, fontSize, readOnly}) {
  TextEditingController emailController = TextEditingController();
  TextEditingController passWordController = TextEditingController();

  var icon;
  TextEditingController controller = TextEditingController();
  switch (label) {
    case "email":
      {
        controller = emailController;
      }
    case "password":
      {
        controller = passWordController;
      }
  }
  // Icons.credit_card
  icon = obscureText ? Icons.lock_outline : Icons.mail;
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Container(
        height: 60,
        padding: EdgeInsets.symmetric(vertical: 10),
        child: TextField(
          controller: controller,
          onChanged: (val){
            BlocProvider.of<SignInBloc>(context).add(SigninSubmittedEvent<>)
          },
          decoration: InputDecoration(
            contentPadding: EdgeInsets.all(10.0),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
            hintText: label,
            hintStyle: GoogleFonts.poppins(fontSize: 15, color: Colors.grey),
            suffixIcon: Icon(icon),
          ),
        ),
      ),
      SizedBox(height: 10),
      BlocBuilder<SignInBloc, SignInState>(
        builder: (context, state) {
          if (state is SigninErrorState) {
            return Text("Enter Valid $label");
          } else
            return Container();
        },
      ),
    ],
  );
}
