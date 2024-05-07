import 'package:flutter/material.dart';
import 'package:open_market/core/theme/text_style.dart';
import 'package:open_market/features/home/view/widgets/search_bar.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('Open Market',style: StyleText.textStyleUbuntu18),
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 18.0),
          child: Column(
            children: [
              SearchTextFieldBar(),
            ],
          ),
        ),
      ),
    );
  }
}
