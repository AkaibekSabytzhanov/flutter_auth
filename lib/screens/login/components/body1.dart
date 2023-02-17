import 'package:flutter/material.dart';

import 'package:flutter_auth/screens/login/components/already_have_an_account.dart';

import 'package:flutter_auth/screens/login/components/background1.dart';
import 'package:flutter_auth/screens/login/components/rounded_input_field.dart';
import 'package:flutter_auth/screens/login/components/rounded_password_field.dart';
import 'package:flutter_auth/widgets/rounded_button.dart';

import 'package:flutter_svg/flutter_svg.dart';

class Body1 extends StatelessWidget {
  const Body1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background1(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'LOGIN',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(height: size.height * 0.03),
          SvgPicture.asset(
            'assets/icons/login.svg',
            height: size.height * 0.35,
          ),
          SizedBox(height: size.height * 0.03),
          RoundedInputField(
            hintText: "Your Email",
            onChanget: (value) {},
          ),
          RoundedPasswordField(
            onChanged: (value) {},
          ),
          RoundedButton(
            text: 'LOGIN',
            press: () {},
          ),
          SizedBox(height: size.height * 0.03),
          AlreadyHaveAnAccountCheck(
            press: () {},
          )
        ],
      ),
    );
  }
}
