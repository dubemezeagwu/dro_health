import 'package:flutter/material.dart';

class SizeConfig {
  static BuildContext? appContext;
  static MediaQueryData? _mediaQueryData;
  static double? screenWidth;
  static double? screenHeight;

  static void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    appContext = context;
    screenWidth = _mediaQueryData!.size.width;
    screenHeight = _mediaQueryData!.size.height;
  }

  static double getHeight(double height) {
    return _mediaQueryData!.size.height * (height / 896);
  }

  static double getWidth(double width) {
    return _mediaQueryData!.size.width * (width / 414);
  }

  static double getTextSize(double textSize) {
    return _mediaQueryData!.size.width * (textSize / 414);
  }
}