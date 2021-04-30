import 'package:flutter/material.dart';
import 'package:shop_app/components/custom_surfix_icon.dart';
import 'package:shop_app/components/default_button.dart';
import 'package:shop_app/components/form_error.dart';
import 'package:shop_app/screens/forgot_password/forgot_password_screen.dart';
import 'package:shop_app/screens/login_success/login_success_screen.dart';

import '../../../constants.dart';
import '../../../size_config.dart';
class SignForm extends StatefulWidget {
  @override
  _SignFormState createState() => _SignFormState();
}

class _SignFormState extends State<SignForm> {
  final _formKey = GlobalKey<FormState>();
  String email;
  String password;
  bool remember = false;
  final List<String> errors = [];
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          buildEmailFormField(),
          SizedBox(height: getProportionateScreenHeight(30),),
          buildPasswordFormField(),
          SizedBox(height: getProportionateScreenHeight(30),),
          Row(
            children: [
              Checkbox(value: remember,
                activeColor: kPrimaryColor,
                onChanged: (value){
                  setState(() {
                    remember = value;
                  });
                },
              ),
              Text("Remember me "),
              Spacer(),
              GestureDetector(
                onTap: () => Navigator.pushNamed(context,
                    ForgotPasswordScreen.routeName),
              child:Text("Forgot Password",style: TextStyle(decoration: TextDecoration.underline),),
              ),
                ],
          ),
          FormError(errors: errors),
          SizedBox(height: getProportionateScreenHeight(20),),
          DefaultButton(
            text: "Continue",
            press: () {
              if(_formKey.currentState.validate ()){
                _formKey.currentState.save();
                Navigator.pushNamed(context, LoginSuccessScreen.routeName);
              }
            },
          ),
        ],
      ),
    );
  }

  TextFormField buildEmailFormField() {
    return TextFormField(
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
          return "";
        }else if(!emailValidateRegExp.hasMatch(value)&&
            !errors.contains( KInvalidEmailError)){
          setState(() {
            errors.add(KInvalidEmailError);
          });
          return "";
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
    );
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
      obscureText: true,
      onSaved: (newValue) => password = newValue ,
      onChanged: (value){
        if (value.isNotEmpty && errors.contains(KPassNullError)) {
          setState(() {
            errors.remove(KPassNullError);
          });
        }else if(value.length >= 8  &&
            errors.contains( KShortPassError)){
          setState(() {
            errors.remove(KShortPassError);
          });
        }
        return null;
      },
      validator: (value){
        if (value.isEmpty && !errors.contains(KPassNullError)) {
          setState(() {
            errors.add(KPassNullError);
          });
          return "";
        }else if(value.length <8 &&
            !errors.contains( KShortPassError)){
          setState(() {
            errors.add(KShortPassError);
          });
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "Password",
        hintText: "Enter your password",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffixIcon(
          svgIcon: "assets/icons/Lock.svg",
        ),
      ),
    );
  }
}
