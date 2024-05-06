import 'package:flutter/material.dart';
import 'package:open_market/core/theme/colors.dart';
import 'package:open_market/core/theme/text_style.dart';

class ButtonLoginOrSignUp extends StatelessWidget {
  const ButtonLoginOrSignUp({super.key, required this.textButton, required this.onPressed, required this.text});
  final String textButton;
  final String text;
  final Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(text),
        TextButton(onPressed: onPressed,
         child: Text(textButton,
         style: StyleText.textStyleWhite15.copyWith(
          color: ColorManager.redColor,
         )),
         ),
      ],
    );
  }
}