import 'package:flutter/material.dart';

import '../../size_config.dart';
import 'package:shop_app/screens/sign_up/components/body.dart';

class SignUpScreen extends StatelessWidget {
  static String routeName = "/sign_up_screen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle:true,
        title: Text("Sign Up",
          style: TextStyle(
              fontSize: getProportionateScreenWidth(20)),
        ),
      ),
      body: Body(),
    );
  }
}
