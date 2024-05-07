import 'package:flutter/material.dart';
import 'package:open_market/core/theme/colors.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key,
      required this.labelText,
      required this.prefixIcon,
      this.suffixIcon,
      required this.obscureText, required this.controller, required this.validator});

  final String labelText;
  final Widget prefixIcon;
  final Widget? suffixIcon;
  final bool obscureText;
  final TextEditingController controller;
  final String? Function(String?) validator; 
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: ColorManager.redColor,
      controller: controller,
      obscureText: obscureText,
      validator: validator,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
          label: Text(labelText),
          labelStyle: const TextStyle(color: ColorManager.whiteColor),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4),
          ),
          focusedBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(4)),
            borderSide: BorderSide(color: ColorManager.redColor),
          )),
    );
  }
}