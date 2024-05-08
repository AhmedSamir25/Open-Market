import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:open_market/core/theme/text_style.dart';

class PriceAndLike extends StatelessWidget {
  const PriceAndLike({super.key, required this.priceText, required this.onPressed});
  final int priceText;
  final Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "$priceText EGP",
            style: StyleText.textStyle17,
          ),
          IconButton(onPressed: onPressed, icon: const Icon(FontAwesomeIcons.heart))
        ],
      ),
    );
  }
}