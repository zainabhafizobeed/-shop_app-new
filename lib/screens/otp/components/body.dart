import 'package:flutter/material.dart';
import 'package:shop_app/screens/otp/components/otp_form.dart';
import '../../../constants.dart';
import '../../../size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(30)),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              // SizedBox(height: SizeConfig.screenHeight* 0.04,),
              Text(
                "OTP Verification",
                style: headingStyle,
              ),
              SizedBox(
                height: SizeConfig.screenHeight * 0.04,
              ),
              Text(
                "We sent your code to +1 898860*** ",
                textAlign: TextAlign.center,
              ),
              buildTimer(),
              OtpForm(),
              SizedBox(
                height: SizeConfig.screenHeight * 0.04,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Row buildTimer() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(" this code will expired in"),
        TweenAnimationBuilder(
            tween: Tween(begin: 30.0, end: 0),
            duration: Duration(seconds: 30),
            builder: (context, value, child) => Text(
                  " 00:${value.toInt()}",
                  style: TextStyle(color: kPrimaryColor),
                ))
      ],
    );
  }
}
