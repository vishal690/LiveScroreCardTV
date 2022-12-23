import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tvproject/Components/MatchCodeEntryForm.dart';
import 'package:tvproject/Screens/ScoreCardDisplay.dart';

import '../Components/ContainerComponent.dart';
import '../Components/ImageControl.dart';
import '../ScreenManageClass/ScoreCardManage.dart';
import '../Utility/GlobalData.dart';

class LaunchScreen extends StatefulWidget {
  @override
  State<LaunchScreen> createState() => _LaunchScreenState();
}

class _LaunchScreenState extends State<LaunchScreen> {
  @override
  Widget build(BuildContext context) {
    double deviceHeight = MediaQuery.of(context).size.height;
    double deviceWidth = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        BackgroundImage.setBackgroundImage(1, 1, "images/aa.jpg", context),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: MatchCodeForm.setMatchCode(context),
        ),
      ],
    );
  }
}
