import 'package:flutter/material.dart';

class Responsive {
  static late double screenWidth;
  static late double screenHeight;
  static late double blockSizeHorizontal;
  static late double blockSizeVertical;

  static void init(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height;
    blockSizeHorizontal = screenWidth / 100;
    blockSizeVertical = screenHeight / 100;
  }

  // responsive height
  static double height(double percentage) {
    return blockSizeVertical * percentage;
  }

  // responsive width
  static double width(double percentage) {
    return blockSizeHorizontal * percentage;
  }
}