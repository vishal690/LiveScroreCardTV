import 'package:flutter/material.dart';

class ContainerControl {
  static Widget containerControl(
      double height,
      double weight,
      Color containerColor,
      double fontSize,
      Color fontColor,
      String text,
      EdgeInsetsGeometry margin,
      BuildContext context) {
    double deviceHeight = MediaQuery.of(context).size.height;
    double deviceWidth = MediaQuery.of(context).size.width;
    var container = Container(
        margin: margin,
        color: containerColor,
        height: deviceHeight * height,
        width: deviceWidth * weight,
        child: Center(
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(color: fontColor, fontSize: fontSize),
          ),
        ));
    return container;
  }
}
