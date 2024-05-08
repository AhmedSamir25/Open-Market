import 'package:flutter/material.dart';
import 'package:open_market/core/constant/assets_manager.dart';
import 'package:open_market/core/theme/text_style.dart';
import 'package:open_market/features/home/view/widgets/price_and_like.dart';

class ItemListBuilder extends StatelessWidget {
  const ItemListBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    double heightMedia = MediaQuery.of(context).size.height;
    double widthMedia = MediaQuery.of(context).size.width;
    return SizedBox(
      height: heightMedia * 0.28,
      width: double.infinity,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.only(right: 10),
          child: Container(
            color: Colors.grey[850],
            width: widthMedia * 0.51,
            height: 100,
            child: Column(
              children: [
                Image.asset(
                  AssetsManager.carIcon,
                  width: widthMedia * 0.3,
                  height: heightMedia * 0.15,
                ),
                const Divider(
                  color: Colors.white38,
                  height: 10,
                ),
                PriceAndLike(priceText: 210000, onPressed: () {}),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Column(
                    children: [
                      Text(
                        'Bmw x6 Bmw x6Bmw x6Bmw x6Bmw x6Bmw x6Bmw x6',
                        style: StyleText.textStyleWhite15,
                        overflow: TextOverflow.ellipsis,),
                      Row(
                        children: [
                          const Icon(Icons.place,size: 20,),
                          Text("Cairo",style: StyleText.textStyleWhite15,),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}