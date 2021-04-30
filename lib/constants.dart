import 'package:flutter/material.dart';

const kPrimaryColor = Color(0xFFFF7643);
const kPrimaryLightColor = Color(0xFFFFECDF);
const kPrimaryGradientColor = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [Color(0xFFFFA53E), Color(0xFFFF7643)]);
const kSecondaryColor = Color(0xFF979797);
const kTextColor = Color(0xFF757575);
const kAnimationDuration = Duration(milliseconds: 200);

//form error

final RegExp emailValidateRegExp =
    RegExp(r"^[a-zA-Z0 9,]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
const String KEmailNullError = "Please Enter your email";
const String KInvalidEmailError = "Please Enter Valid email";
const String KPassNullError = "Please Enter your Password";
const String KShortPassError = "Password is too Short";
const String KMatchPassError = "Passwords don't match";
