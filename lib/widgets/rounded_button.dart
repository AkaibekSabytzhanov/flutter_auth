import 'package:flutter/material.dart';
import 'package:flutter_auth/constants/constants.dart';

class RoundedButton extends StatelessWidget {
  final String? text;
  final void Function()? press;
  final Color? color, textColor;

  const RoundedButton({
    Key? key,
    this.text,
    this.press,
    this.color = kPrimaryColor,
    this.textColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10.0),
      width: size.width * 0.8,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(0.0),
        child: TextButton(
          style: TextButton.styleFrom(
            backgroundColor: color,
          ),
          onPressed: press,
          child: Text(
            text!,
            style: TextStyle(
              color: textColor,
            ),
          ),
        ),
      ),
    );
  }
}
