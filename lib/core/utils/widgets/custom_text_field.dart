import 'package:flutter/material.dart';
import 'package:open_market/core/theme/colors.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key,
   required this.controller, required this.prefixIcon, required this.hintText,});
  final TextEditingController controller;
  final Widget prefixIcon;
  final String hintText;
  @override
  Widget build(BuildContext context) {
    return TextField(
       cursorColor: ColorManager.redColor,
      controller: controller,
      decoration: InputDecoration(
          prefixIcon: prefixIcon,
          hintText: hintText,
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