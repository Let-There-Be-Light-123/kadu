import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget textFieldInput({label, obscureText, fontSize, readOnly}) {
  var icon;
  // Icons.credit_card
  icon = obscureText ? Icons.lock_outline : Icons.mail;
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Container(
        height: 60,
        padding: EdgeInsets.symmetric(vertical: 10),
        child: TextField(
          decoration: InputDecoration(
            contentPadding: EdgeInsets.all(10.0),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
            hintText: label,
            hintStyle: GoogleFonts.poppins(fontSize: 15, color: Colors.grey),
            suffixIcon: Icon(icon),
          ),
        ),
      )
    ],
  );
}
