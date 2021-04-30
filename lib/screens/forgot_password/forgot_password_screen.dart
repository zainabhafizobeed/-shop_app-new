import 'package:flutter/material.dart';
import 'package:shop_app/screens/forgot_password/body.dart';

import '../../size_config.dart';

class ForgotPasswordScreen extends StatelessWidget {
  static String routeName = "/forgot_password";
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        centerTitle:true,
        title: Text(" Forgot Password ",style: TextStyle(fontSize: getProportionateScreenWidth(20),),),
      ),
      body:Body() ,
    );
  }
}
