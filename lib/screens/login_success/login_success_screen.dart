import 'package:flutter/material.dart';
import 'package:shop_app/screens/login_success/component/body.dart';

import '../../size_config.dart';

class LoginSuccessScreen extends StatelessWidget {
  static String routeName = "/login_success";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Login Success ",
          style: TextStyle(fontSize: getProportionateScreenWidth(20)),
        ),
      ),
      body: Body(),
    );
  }
}
