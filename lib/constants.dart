import 'package:flutter/material.dart';
import 'package:shop_app/size_config.dart';

const kPrimaryColor = Color(0xFFFF7643);
const kPrimaryLightColor = Color(0xFFFFECDF);
const kPrimaryGradientColor = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [Color(0xFFFFA53E), Color(0xFFFF7643)]);
const kSecondaryColor = Color(0xFF979797);
const kTextColor = Color(0xFF757575);
const kAnimationDuration = Duration(milliseconds: 200);

final headingStyle = TextStyle(
    color: Colors.black,
    fontSize: getProportionateScreenWidth(28),
    fontWeight: FontWeight.bold,
);
//form error

final RegExp emailValidateRegExp =
    RegExp(r"^[a-zA-Z0 9,]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
const String KEmailNullError = "Please Enter your email";
const String KInvalidEmailError = "Please Enter Valid email";
const String KPassNullError = "Please Enter your Password";
const String KShortPassError = "Password is too Short";
const String KMatchPassError = "Passwords don't match";
const String KNameNullError = "Please Enter your name ";
const String KPhoneNumberNullError = "please Enter Your Phone Number";
const String KAddressNullError = "Please Enter your Address";

final otpInputDecoration = InputDecoration(
    contentPadding: EdgeInsets.symmetric(
        vertical: getProportionateScreenWidth(15)
    ),
    enabledBorder: outlineInputBorder(),
    focusedBorder: outlineInputBorder(),
    border: outlineInputBorder(),
);
    OutlineInputBorder outlineInputBorder(){
        return OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
        borderSide: BorderSide(color: kTextColor),

);
    }