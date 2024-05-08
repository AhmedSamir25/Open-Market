import 'package:flutter/material.dart';
import 'package:open_market/core/constant/assets_manager.dart';
import 'package:open_market/features/home/view/widgets/info_home.dart';
import 'package:open_market/features/home/view/widgets/name_and_place.dart';
import 'package:open_market/features/home/view/widgets/price_and_like.dart';

class HomeAndFlatsList extends StatelessWidget {
  const HomeAndFlatsList({super.key});

  @override
  Widget build(BuildContext context) {
     double heightMedia = MediaQuery.of(context).size.height;
    double widthMedia = MediaQuery.of(context).size.width;
    return SizedBox(
      height: heightMedia * 0.34,
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
                  AssetsManager.homeIcon,
                  width: widthMedia * 0.3,
                  height: heightMedia * 0.15,
                ),
                const Divider(
                  color: Colors.white38,
                  height: 10,
                ),
                PriceAndLike(priceText: 210000, onPressed: () {}),
                 const InformationHome(bedRoomCount: 4,
                 bathRoomCount: 2,
                  areaCount: 147),
                 const Padding(
                  padding:  EdgeInsets.only(left: 8.0),
                  child: NameAndPlace(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}