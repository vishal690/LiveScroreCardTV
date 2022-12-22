import 'package:flutter/material.dart';
import 'package:tvproject/Components/ContainerComponent.dart';
import 'package:tvproject/Utility/GlobalData.dart';

class LastColumnScoreCard {
  static Widget setLastColumn(BuildContext context) {
    double deviceHeight = MediaQuery.of(context).size.height;
    double deviceWidth = MediaQuery.of(context).size.width;

    var columnControl = Container(
      height: deviceHeight * 1,
      width: deviceWidth * .32,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
// Container property-----------------------------------------------------------
// ContainerControl.containerControl(height, width, Container_Color, Font_Size, Font_Color, Object/Text,EdgeInsetsGeometry, context)

//Team 1 score------------------------------------------------------------------
          ContainerControl.containerControl(.1, 1, Color(0xff19196f), 20,
              Colors.white, GlobalData.i2, EdgeInsets.zero, context),
//Team 2 score------------------------------------------------------------------
          ContainerControl.containerControl(.1, 1, Color(0xff8c008a), 20,
              Colors.white, GlobalData.i1, EdgeInsets.zero, context),
//Upcoming Team-----------------------------------------------------------------
          ContainerControl.containerControl(.1, 1, Color(0xff19196f), 20,
              Colors.white, GlobalData.i3, EdgeInsets.zero, context),
//Previous ball run ------------------------------------------------------------
          ContainerControl.containerControl(.35, 1, Colors.black, 130,
              Colors.yellow, GlobalData.prev_ball, EdgeInsets.zero, context),
//Previous ball tag-------------------------------------------------------------
          ContainerControl.containerControl(.1, 1, Color(0xff363636), 32,
              Colors.white, GlobalData.prev_ball_tag, EdgeInsets.zero, context),
        ],
      ),
    );
    return columnControl;
  }
}
