import 'package:flutter/material.dart';
import 'package:tvproject/Components/ImageControl.dart';
import 'package:tvproject/Components/ContainerComponent.dart';
import '../Utility/GlobalData.dart';

class MidColumnScoreCard {
  static Widget setMidColumn(BuildContext context) {
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

//Playing current Team ---------------------------------------------------------
          ContainerControl.containerControl(
              0.18,
              1,
              const Color(0xff19196f),
              35,
              Colors.white,
              GlobalData.curr_team_playing_and_inn,
              EdgeInsets.zero,
              context),
//Current over -----------------------------------------------------------------
          ContainerControl.containerControl(
              0.18,
              1,
              const Color(0xffb5cdcf),
              35,
              const Color(0xff3a3836),
              "(" + GlobalData.overs + ")   overs (4)",
              EdgeInsets.zero,
              context),
//Current Batsman Box ----------------------------------------------------------
          Row(
            children: [
              //Bat Image ------------------------------------------------------
              BackgroundImage.setBackgroundImage(
                  0.14, .075, "images/bat.jpg", context),
              //Playing current Batsman ----------------------------------------
              ContainerControl.containerControl(
                  0.14,
                  .245,
                  const Color(0xff19196f),
                  23,
                  Colors.white,
                  GlobalData.batsman,
                  EdgeInsets.zero,
                  context),
            ],
          ),

//Current Bowler Box -----------------------------------------------------------
          Row(
            children: [
              //Boll Image -----------------------------------------------------
              BackgroundImage.setBackgroundImage(
                  0.14, .075, "images/ball2.jpg", context),
              //Playing current Bowler -----------------------------------------
              ContainerControl.containerControl(
                  0.14,
                  .245,
                  const Color(0xff8c008a),
                  23,
                  Colors.white,
                  GlobalData.bowler,
                  EdgeInsets.zero,
                  context),
            ],
          ),
        ],
      ),
    );
    return columnControl;
  }
}
