import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:open_market/core/theme/text_style.dart';

class InformationHome extends StatelessWidget {
  const InformationHome(
      {super.key,
      required this.bedRoomCount,
      required this.bathRoomCount,
      required this.areaCount});
  final int bedRoomCount, bathRoomCount, areaCount;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0),
      child: Column(
        children: [
          Row(
            children: [
              Spacer(flex: 1,),
              const Icon(Icons.bed,size: 21,),
              SizedBox(width: 10,),
              Text(bedRoomCount.toString(),style: StyleText.textStyle13,),
              Spacer(flex: 5,),
              const Icon(FontAwesomeIcons.bath,size: 21,),
              SizedBox(width: 10,),
              Text(bathRoomCount.toString(),style: StyleText.textStyle13,),
              Spacer(flex: 4,),
            ],
          ),
          Row(
            children: [
              Spacer(flex: 1,),
              Icon(FontAwesomeIcons.chartArea,size: 20,),
              SizedBox(width: 10,),
              Text(areaCount.toString(),style: StyleText.textStyle13,),
              Spacer(flex: 9,),
            ],
          ),
        ],
      ),
    );
  }
}