import 'package:flutter/material.dart';
import 'package:open_market/core/theme/text_style.dart';
import 'package:open_market/features/home/view/widgets/categories_item_list.dart';
import 'package:open_market/features/home/view/widgets/search_bar.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    double heightMedia = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text('Open Market', style: StyleText.textStyleUbuntu18),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SearchTextFieldBar(),
              SizedBox(height: heightMedia * 0.02,),
              Text('Categories',style: StyleText.textStyle17,),
              CategoriesItemList(),
            ],
          ),
        ),
      ),
    );
  }
}