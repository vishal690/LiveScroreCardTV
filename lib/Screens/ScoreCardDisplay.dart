import 'dart:async';

import 'package:flutter/material.dart';
import 'package:tvproject/Components/ContainerComponent.dart';
import 'package:tvproject/Utility/GlobalData.dart';
import '../Components/ApiObjects.dart';
import '../Components/ImageControl.dart';
import '../ScreenManageClass/ScoreCardManage.dart';

class MyLaunchPage extends StatefulWidget {
  @override
  State<MyLaunchPage> createState() => _MyLaunchPageState();
}

class _MyLaunchPageState extends State<MyLaunchPage> {
  int i = 0;

  _MyLaunchPageState() {
    scheduleTimeout(const Duration(seconds: 5));
  }

  void scheduleTimeout(Duration duration) => Timer.periodic(
        duration,
        (timer) {
          i++;
          DateTime timenow = DateTime.now();
          print("datetime is:$timenow and value of I :  $i");
          ApiObject.setScoreCardValues(setState);
        },
      );

  @override
  Widget build(BuildContext context) {
    double deviceHeight = MediaQuery.of(context).size.height;
    double deviceWidth = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        BackgroundImage.setBackgroundImage(1, 1, "images/aa.jpg", context),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: Center(
            child: Container(
              height: deviceHeight * .98,
              width: deviceWidth * .99,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ScoreCardManage.manageScoreCardRow(context),
// ContainerControl.containerControl(height, width, Container_Color, Font_Size, Font_Color, Object/Text, context)
                  ContainerControl.containerControl(
                      0.15,
                      .99,
                      Colors.black,
                      42,
                      Colors.yellow,
                      GlobalData.baseLineDisplay,
                      EdgeInsets.zero,
                      context)
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
