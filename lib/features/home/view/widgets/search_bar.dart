import 'package:flutter/material.dart';
import 'package:open_market/core/utils/widgets/custom_text_field.dart';

class SearchTextFieldBar extends StatelessWidget {
  const SearchTextFieldBar({super.key});

  @override
  Widget build(BuildContext context) {
    final textController = TextEditingController();
    return  CustomTextField(
      controller: textController,
      hintText: "Search",
      prefixIcon: const Icon(Icons.search),
    );
  }
}