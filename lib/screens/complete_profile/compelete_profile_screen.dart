import 'package:flutter/material.dart';
import 'package:shop_app/screens/complete_profile/components/body.dart';

import '../../size_config.dart';

class CompleteProfileScreen extends StatelessWidget {
  static String routeName = "/complete_profile";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign Up",
            style: TextStyle(
              fontSize: getProportionateScreenWidth(20),
            )),
        centerTitle: true,
      ),
      body: Body(),
    );
  }
}
