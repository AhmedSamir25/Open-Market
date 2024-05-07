import 'package:flutter/material.dart';
import 'package:open_market/core/theme/colors.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({super.key, required this.textButton, required this.onPressed});
  final String textButton;
  final Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomRight,
      child: TextButton(
        onPressed: onPressed,
        child: Text(textButton,style:const TextStyle(color: ColorManager.redColor,),
      )),
    );
  }
}