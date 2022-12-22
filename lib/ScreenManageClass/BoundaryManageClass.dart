import 'package:flutter/material.dart';
import 'package:tvproject/Components/BoundaryComponent.dart';
import 'package:tvproject/Components/ContainerComponent.dart';

import '../Utility/GlobalData.dart';

class ContainerControl2 {
  static Widget containerControl(BuildContext context) {
    double deviceHeight = MediaQuery.of(context).size.height;
    double deviceWidth = MediaQuery.of(context).size.width;
    double team1Prob = GlobalData.team1_prob;
    double team2Prob = GlobalData.team2_prob;
    var container = Container(
      height: deviceHeight * .51,
      width: deviceWidth * 1,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            ContainerControl.containerControl(
                team1Prob == 0 ? 0 : team1Prob / 250,
                .05,
                Color(0xff1a1a6b),
                20,
                Colors.white,
                GlobalData.t1_prob,
                EdgeInsets.zero,
                context),
            ContainerControl.containerControl(
                0.094,
                0.05,
                Color(0xff010000),
                15,
                Colors.yellow,
                GlobalData.team1name,
                EdgeInsets.only(top: 8),
                context),
          ],
        ),
        Container(
          height: deviceHeight * .51,
          width: deviceWidth * .215,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                color: Color(0xff268925),
                height: deviceHeight * .435,
                width: deviceWidth * .215,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: deviceHeight * .435,
                      width: deviceWidth * .071,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            BoundaryControl.setBoundryControl(
                                .05, .071, Color(0xffcccccc), "", context),
                            BoundaryControl.setBoundryControl(
                                GlobalData.consecutive_flag == "1"
                                    ? .165
                                    : .110,
                                .025,
                                GlobalData.out_zone_id == "011" ||
                                        GlobalData.out_zone_id == "118"
                                    ? Colors.red
                                    : Color(0xffcccccc),
                                "",
                                context),
                            Visibility(
                                visible: GlobalData.consecutive_flag == "1"
                                    ? false
                                    : true,
                                child: BoundaryControl.setBoundryControl(
                                    .110,
                                    .025,
                                    GlobalData.out_zone_id == "012"
                                        ? Colors.red
                                        : Color(0xffcccccc),
                                    "",
                                    context)),
                            BoundaryControl.setBoundryControl(
                                GlobalData.consecutive_flag == "1"
                                    ? .165
                                    : .110,
                                .025,
                                GlobalData.out_zone_id == "013" ||
                                        GlobalData.out_zone_id == "117"
                                    ? Colors.red
                                    : Color(0xffcccccc),
                                "",
                                context),
                            BoundaryControl.setBoundryControl(
                                .05,
                                .071,
                                GlobalData.out_zone_id == "014" ||
                                        GlobalData.out_zone_id == "116"
                                    ? Colors.red
                                    : Color(0xffcccccc),
                                "",
                                context),
                          ]),
                    ),
                    Container(
                      height: deviceHeight * .435,
                      width: deviceWidth * .072,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            BoundaryControl.setBoundryControl(
                                .05, .071, Color(0xffcccccc), "", context),
                            BoundaryControl.setBoundryControl(
                                .035, .06, Color(0xffe7e4e4), "iii", context),
                            BoundaryControl.setBoundryControl(
                                .15, .06, Color(0xff999999), "", context),
                            BoundaryControl.setBoundryControl(
                                .035, .06, Color(0xffe7e4e4), "iii", context),
                            ContainerControl.containerControl(
                                0.079,
                                .071,
                                Color(0xff010000),
                                12,
                                Colors.yellow,
                                GlobalData.staticLine1,
                                EdgeInsets.only(top: 10, bottom: 3),
                                context),
                            BoundaryControl.setBoundryControl(
                                .05,
                                .071,
                                GlobalData.out_zone_id == "015" ||
                                        GlobalData.out_zone_id == "115"
                                    ? Colors.red
                                    : Color(0xffcccccc),
                                "",
                                context),
                          ]),
                    ),
                    Container(
                      height: deviceHeight * .435,
                      width: deviceWidth * .071,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            BoundaryControl.setBoundryControl(
                                .05, .071, Color(0xffcccccc), "", context),
                            BoundaryControl.setBoundryControl(
                                GlobalData.consecutive_flag == "0"
                                    ? .165
                                    : .110,
                                .025,
                                GlobalData.out_zone_id == "018" ||
                                        GlobalData.out_zone_id == "111"
                                    ? Colors.red
                                    : Color(0xffcccccc),
                                "",
                                context),
                            Visibility(
                                visible: GlobalData.consecutive_flag == "0"
                                    ? false
                                    : true,
                                child: BoundaryControl.setBoundryControl(
                                    .110,
                                    .025,
                                    GlobalData.out_zone_id == "112"
                                        ? Colors.red
                                        : Color(0xffcccccc),
                                    "",
                                    context)),
                            BoundaryControl.setBoundryControl(
                                GlobalData.consecutive_flag == "0"
                                    ? .165
                                    : .110,
                                .025,
                                GlobalData.out_zone_id == "017" ||
                                        GlobalData.out_zone_id == "113"
                                    ? Colors.red
                                    : Color(0xffcccccc),
                                "",
                                context),
                            BoundaryControl.setBoundryControl(
                                .05,
                                .071,
                                GlobalData.out_zone_id == "016" ||
                                        GlobalData.out_zone_id == "114"
                                    ? Colors.red
                                    : Color(0xffcccccc),
                                "",
                                context),
                          ]),
                    ),
                  ],
                ),
              ),
              ContainerControl.containerControl(
                  0.06,
                  .215,
                  Color(0xff010000),
                  15,
                  Colors.yellow,
                  GlobalData.staticLine2,
                  EdgeInsets.zero,
                  context),
            ],
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            ContainerControl.containerControl(
                team2Prob == 0 ? 0 : team2Prob / 250,
                .05,
                Color(0xff83048a),
                20,
                Colors.white,
                GlobalData.t2_prob,
                EdgeInsets.zero,
                context),
            ContainerControl.containerControl(
                0.094,
                0.05,
                Color(0xff010000),
                15,
                Colors.yellow,
                GlobalData.team2name,
                EdgeInsets.only(top: 8),
                context),
          ],
        ),
      ]),
    );
    return container;
  }
}
