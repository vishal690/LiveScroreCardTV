import 'package:flutter/material.dart';

class BackgroundImage {
  static Widget setBackgroundImage(double height, double weight,
      String backgroundImage, BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    double deviceHeight = MediaQuery.of(context).size.height;

    var image = Container(
      height: deviceHeight * height,
      width: deviceWidth * weight,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(backgroundImage), fit: BoxFit.cover),
      ),
    );
    return image;
  }
}
