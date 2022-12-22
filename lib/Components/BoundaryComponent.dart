import 'package:flutter/material.dart';

class BoundaryControl {
  static Widget setBoundryControl(double height, double width, Color color,
      String text, BuildContext context) {
    double deviceHeight = MediaQuery.of(context).size.height;
    double deviceWidth = MediaQuery.of(context).size.width;
    var container = Container(
      color: color,
      height: deviceHeight * height,
      width: deviceWidth * width,
      child: Center(
          child: Text(
        text,
        textAlign: TextAlign.center,
        style: TextStyle(color: Colors.black, fontSize: 10),
      )),
    );
    return container;
  }
}
