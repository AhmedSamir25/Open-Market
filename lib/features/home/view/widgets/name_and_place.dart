import 'package:flutter/material.dart';
import 'package:open_market/core/theme/text_style.dart';

class NameAndPlace extends StatelessWidget {
  const NameAndPlace({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Bmw x6 Bmw x6Bmw x6Bmw x6Bmw x6Bmw x6Bmw x6',
          style: StyleText.textStyleWhite15,
          overflow: TextOverflow.ellipsis,
        ),
        Row(
          children: [
            const Icon(
              Icons.place,
              size: 20,
            ),
            Text(
              "Cairo",
              style: StyleText.textStyleWhite15,
            ),
          ],
        ),
      ],
    );
  }
}