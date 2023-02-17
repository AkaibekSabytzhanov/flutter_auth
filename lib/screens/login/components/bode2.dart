import 'package:flutter/material.dart';

import 'package:flutter_auth/screens/login/components/already_have_an_account.dart';
import 'package:flutter_auth/screens/login/components/backgrround.dart';
import 'package:flutter_auth/screens/login/components/or_divider.dart';
import 'package:flutter_auth/screens/login/components/rounded_input_field.dart';
import 'package:flutter_auth/screens/login/components/socal_icon.dart';
import 'package:flutter_auth/widgets/rounded_button.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body2 extends StatelessWidget {
  final Widget? child;

  const Body2({
    this.child,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Column(
        
        children: [
          const Text(
            "SIGN UP",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(height: size.height * 0.03),
          SvgPicture.asset(
            'assets/icons/signup.svg',
            height: size.height * 0.35,
          ),
          RoundedInputField(
            hintText: "Your Email",
            onChanget: (value) {},
          ),
          RoundedInputField(
            siffixcon: Icons.visibility,
            icon: Icons.lock,
            hintText: "Password",
            onChanget: (value) {},
          ),
          RoundedButton(
            text: "SIGNUP",
            press: () {},
          ),
          SizedBox(height: size.height * 0.03),
          AlreadyHaveAnAccountCheck(
            login: false,
            press: () {},
          ),
          const OrDivider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SocalIcon(
                iconSrc: 'assets/icons/facebook.svg',
                press: () {},
              ),
              SocalIcon(
                iconSrc: 'assets/icons/google-plus.svg',
                press: () {},
              ),
              SocalIcon(
                iconSrc: 'assets/icons/twitter.svg',
                press: () {},
              )
            ],
          )
        ],
      ),
    );
  }
}
