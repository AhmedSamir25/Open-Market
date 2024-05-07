import 'package:flutter/material.dart';
import 'package:open_market/core/theme/colors.dart';

abstract class StyleText {
  static TextStyle textStyleWhiteUbuntu30 = const TextStyle(
    fontSize: 30,
    color: ColorManager.whiteColor,
    fontFamily: "Ubuntu Sans Mono",
  );
  static TextStyle textStyle22 = const TextStyle(
    fontSize: 22,
     fontWeight: FontWeight.w400);
  static TextStyle textStyleWhiteUbuntu15 = const TextStyle(
    fontSize: 15,
    fontFamily: "Ubuntu Sans Mono",
    fontWeight: FontWeight.w400,
    color: ColorManager.whiteColor,
  );
  static TextStyle textStyleWhite15 = const TextStyle(
    fontSize: 15,
    color: ColorManager.whiteColor,
  );
}
