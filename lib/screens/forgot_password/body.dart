import 'package:flutter/material.dart';
import 'package:shop_app/components/custom_surfix_icon.dart';
import 'package:shop_app/components/default_button.dart';
import 'package:shop_app/components/form_error.dart';
import 'package:shop_app/components/no_account_text.dart';
import '../../constants.dart';
import '../../size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                SizedBox(
                  width: double.infinity,
                  height: SizeConfig.screenHeight*0.04,),
                Text(
                  "Forgot Password",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: getProportionateScreenWidth(28),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: SizeConfig.screenHeight * 0.04,
                ),
                Text(
                  "Please Enter your email and we will send you a link to return to your account ",
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: SizeConfig.screenHeight * 0.04,
                ),
                ForgotPasswordForm(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
class ForgotPasswordForm extends StatefulWidget {
  @override
  _ForgotPasswordFormState createState() => _ForgotPasswordFormState();
}

class _ForgotPasswordFormState extends State<ForgotPasswordForm> {
  final _formKey = GlobalKey<FormState>();
  List<String> errors  =[];
  String email;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child:Column(
        children: [
        TextFormField(
        keyboardType: TextInputType.emailAddress,
        onSaved: (newValue)=> email =newValue,
        onChanged: (value){
          if (value.isNotEmpty && errors.contains(KEmailNullError)) {
            setState(() {
              errors.remove(KEmailNullError);
            });
          }else if(emailValidateRegExp.hasMatch(value)&&
              errors.contains( KInvalidEmailError)){
            setState(() {
              errors.remove(KInvalidEmailError);
            });
          }
          return null;
        },
        // ignore: non_constant_identifier_names, missing_return
        validator: (value) {
          if (value.isEmpty && !errors.contains(KEmailNullError)) {
            setState(() {
              errors.add(KEmailNullError);
            });
          }else if(!emailValidateRegExp.hasMatch(value)&&
              !errors.contains( KInvalidEmailError)){
            setState(() {
              errors.add(KInvalidEmailError);
            });
          }
          return null;
        },
        decoration: InputDecoration(
          labelText: "Enter",
          hintText: "Enter your email",
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: CustomSuffixIcon(
            svgIcon: "assets/icons/Mail.svg",
          ),
        ),
      ),
          SizedBox(height:getProportionateScreenHeight(30)),
          FormError(errors:errors ),
          SizedBox(height: SizeConfig.screenHeight*0.1,),
          DefaultButton(
            text: "Continue",
            press: (){
              if (_formKey.currentState.validate()){

              }
            },
          ),
          SizedBox(height: SizeConfig.screenHeight*0.1,),
          NoAccountText(),
        ],
      )
    );
  }
}

