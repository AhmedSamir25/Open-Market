import 'package:flutter/material.dart';
import 'package:open_market/core/theme/text_style.dart';

class CustomMaterialButton extends StatelessWidget {
  const CustomMaterialButton(
      {super.key, required this.textButton, required this.iconData, required this.onPressed});
  final String textButton;
  final IconData iconData;
  final Function() onPressed;
  @override
  Widget build(BuildContext context) {
    double widthMedia = MediaQuery.of(context).size.width;
    return MaterialButton(
      onPressed: onPressed,
      child: Container(
        width: widthMedia * 0.7,
        decoration: BoxDecoration(
            color: const Color.fromARGB(255, 211, 53, 42),
            borderRadius: BorderRadius.circular(4)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Row(
            children: [
              Icon(
                iconData,
                size: 35,
              ),
              SizedBox(
                width: widthMedia * 0.15,
              ),
              Text(
                textButton,
                style: StyleText.textStyle22,
              ),
            ],
          ),
        ),
      ),
    );
  }
}