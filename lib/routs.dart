import 'package:flutter/widgets.dart';
import 'package:shop_app/screens/complete_profile/compelete_profile_screen.dart';
import 'package:shop_app/screens/forgot_password/forgot_password_screen.dart';
import 'package:shop_app/screens/login_success/login_success_screen.dart';
import 'package:shop_app/screens/otp/otp_screen.dart';
import 'package:shop_app/screens/sign_in/sign_in_screen.dart';
import 'package:shop_app/screens/sign_up/sign_up_screen.dart';
import 'package:shop_app/screens/splash/splash.dart';

//we use name route
// All our routes will be available her

final Map<String,WidgetBuilder> routes = {
   SplashScreen.routeName:(context)=> SplashScreen(),
   SignInScreen.routeName:(context)=> SignInScreen(),
   ForgotPasswordScreen.routeName:(context)=> ForgotPasswordScreen(),
   LoginSuccessScreen.routeName:(context)=> LoginSuccessScreen(),
   SignUpScreen.routeName:(context)=> SignUpScreen(),
   CompleteProfileScreen.routeName:(context)=> CompleteProfileScreen(),
   OtpScreen.routeName :(context) =>OtpScreen(),
};