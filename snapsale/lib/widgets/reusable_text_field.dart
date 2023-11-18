import 'package:flutter/material.dart';
import 'package:snapsale/themes/app_theme.dart';

class ReusableTextField extends StatelessWidget {
  final String hintText;
  final IconData leadingIcon;
  final bool isObscure;
  final TextEditingController controller;

  const ReusableTextField({
    Key? key,
    required this.hintText,
    required this.leadingIcon,
    required this.isObscure,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: isObscure,
      enableSuggestions: !isObscure,
      autocorrect: !isObscure,
      decoration: InputDecoration(
        prefixIcon: Icon(
          leadingIcon,
          color: AppGeneric.iconColor,
        ),
        hintText: hintText,
        labelText: hintText,
        filled: true,
        fillColor: AppGeneric.palleteColor_1_light,
        floatingLabelBehavior: FloatingLabelBehavior.never,
      ),
      keyboardType: isObscure ? TextInputType.visiblePassword : TextInputType.emailAddress,
      style: const TextStyle(color: AppGeneric.text),
    );
  }
}
