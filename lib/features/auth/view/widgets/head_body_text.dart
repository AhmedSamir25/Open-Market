import 'package:flutter/material.dart';
import 'package:open_market/core/theme/text_style.dart';

class HeadBodyText extends StatelessWidget {
  const HeadBodyText({super.key});

  @override
  Widget build(BuildContext context) {
    return  Center(
      child:  Column(
        children: [
          Text('Open Market',style: StyleText.textStyleWhiteUbuntu30),
          Text('Sell anything and buy anything',style:StyleText.textStyleWhiteUbuntu15)
        ],
      ),
    );
  }
}