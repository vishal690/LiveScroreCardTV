import 'package:flutter/material.dart';
import 'package:tvproject/ScreenManageClass/1stCoumnScoreCard.dart';
import 'package:tvproject/ScreenManageClass/3rdColumnScoreCard.dart';
import '2ndColumScoreCard.dart';

class ScoreCardManage {
  static Widget manageScoreCardRow(BuildContext context) {
    double deviceHeight = MediaQuery.of(context).size.height;
    double deviceWidth = MediaQuery.of(context).size.width;

    var scoreCardRow = Container(
      height: deviceHeight * .82,
      width: deviceWidth * 1,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        FirstColumnScoreCard.setFirstColumn(context),
        MidColumnScoreCard.setMidColumn(context),
        LastColumnScoreCard.setLastColumn(context)
      ]),
    );
    return scoreCardRow;
  }
}
