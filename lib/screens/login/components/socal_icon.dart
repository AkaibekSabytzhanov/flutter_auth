
import 'package:flutter/material.dart';
import 'package:flutter_auth/constants/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SocalIcon extends StatelessWidget {
  final void Function()? press;
  final String? iconSrc;
  const SocalIcon({
    this.iconSrc,
    this.press,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10.0),
        padding: const EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          border: Border.all(
            width: 2.0,
            color: kPrimaryLightColor,
          ),
          shape: BoxShape.circle,
        ),
        child: SvgPicture.asset(
          iconSrc!,
          width: 20.0,
          height: 20.0,
        ),
      ),
    );
  }
}
