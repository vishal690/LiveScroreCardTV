import 'package:flutter/material.dart';
import 'package:tvproject/Components/ContainerComponent.dart';
import 'package:tvproject/ScreenManageClass/BoundaryManageClass.dart';
import 'package:tvproject/Utility/GlobalData.dart';

class FirstColumnScoreCard {
  static Widget setFirstColumn(BuildContext context) {
    double deviceHeight = MediaQuery.of(context).size.height;
    double deviceWidth = MediaQuery.of(context).size.width;

    var columnControl = Container(
      height: deviceHeight * 1,
      width: deviceWidth * .32,
      child:
          Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
//Currunt Score Box-------------------------------------------------------------
        ContainerControl.containerControl(0.3, 1, Colors.black, 100,
            Colors.yellow, GlobalData.curr_score, EdgeInsets.zero, context),
//Boundary and team prob Box----------------------------------------------------
        ContainerControl2.containerControl(context),
      ]),
    );
    return columnControl;
  }
}
