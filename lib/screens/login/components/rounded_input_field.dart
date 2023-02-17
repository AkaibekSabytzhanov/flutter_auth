import 'package:flutter/material.dart';
import 'package:flutter_auth/constants/constants.dart';
import 'package:flutter_auth/screens/login/components/text_field_container.dart';

class RoundedInputField extends StatelessWidget {
  final IconData? siffixcon;
  final String? hintText;
  final IconData? icon;
  final ValueChanged<String>? onChanget;
  const RoundedInputField({
    this.siffixcon,
    this.icon = Icons.person,
    this.hintText,
    this.onChanget,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        onChanged: onChanget,
        decoration: InputDecoration(
          icon: Icon(
            icon,
            color: kPrimaryColor,
          ),
          suffixIcon: Icon(
            siffixcon,
            color: kPrimaryColor,
          ),
          border: InputBorder.none,
          hintText: hintText,
        ),
      ),
    );
  }
}
