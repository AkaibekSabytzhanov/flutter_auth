import 'package:flutter/material.dart';
import 'package:flutter_auth/constants/constants.dart';

class AlreadyHaveAnAccountCheck extends StatelessWidget {
  final bool? login;
  final Function? press;
  const AlreadyHaveAnAccountCheck({
    this.login = true,
    this.press,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          login! ? "Don't have an Account?" : "Already have an Account?",
          style: const TextStyle(color: kPrimaryColor),
        ),
        const SizedBox(width: 10.0),
        GestureDetector(
          onTap: () {},
          child: Text(
            login! ? "Sign Up" : "Sign In",
            style: const TextStyle(
                color: kPrimaryColor, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
