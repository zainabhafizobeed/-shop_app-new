import 'package:flutter/material.dart';
import 'package:shop_app/screens/sign_in/components/body.dart';

import '../../size_config.dart';

class SignInScreen extends StatelessWidget {
  static String routeName = "/sign_in";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle:true,
      title: Text("Sign In ",style: TextStyle(fontSize: getProportionateScreenWidth(20),),),
      ),
      body: Body(),
    );
  }
}
