import 'package:flutter/material.dart';
import 'package:open_market/core/theme/text_style.dart';
import 'package:open_market/features/home/data/local_data/categories_data.dart';

class CategoriesItemList extends StatelessWidget {
  const CategoriesItemList({super.key});

  @override
  Widget build(BuildContext context) {
    double heightMedia = MediaQuery.of(context).size.height;
    double widthMedia = MediaQuery.of(context).size.width;
    return SizedBox(
      width: double.infinity,
      height: heightMedia *0.13,
      child: ListView.builder(
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.only(right: 10.0),
          child: Column(
            children: [
              Container(
                width: widthMedia * 0.16,
                height: heightMedia *0.06,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Image.asset(CategoriesItemData.categoriesList[index].iconCate),
              ),
              Container(
                constraints: BoxConstraints(
                  maxWidth: widthMedia * 0.18
                ),
                child: Text(CategoriesItemData.categoriesList[index].name,
                style: StyleText.textStyle13))
            ],
          ),
        ),
        itemCount: CategoriesItemData.categoriesList.length,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}