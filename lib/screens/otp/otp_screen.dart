import 'package:flutter/material.dart';
import 'package:shop_app/screens/otp/components/body.dart';

import '../../size_config.dart';

class OtpScreen extends StatelessWidget {
  static String routeName = "/otp";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("OTP Verification",
            style: TextStyle(
              fontSize: getProportionateScreenWidth(20),
            )),
        centerTitle: true,
      ),
      body: Body(),
    );
  }
}
