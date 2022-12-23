import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
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
  TextEditingController _matchCode = TextEditingController();
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
            child: Column(children: [
              Padding(
                padding: EdgeInsets.only(
                    top: 170, bottom: 30, right: 300, left: 300),
                child: TextFormField(
                  cursorColor: Colors.black,
                  controller: _matchCode,
                  keyboardType: TextInputType.number,
                  inputFormatters: [
                    FilteringTextInputFormatter.digitsOnly,
                  ],
                  decoration: InputDecoration(
                    labelText: "Enter Match Code",
                    labelStyle: TextStyle(color: Colors.black),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Colors.green, width: 2.0),
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                  ),
                  maxLength: 5,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: ElevatedButton(
                  onPressed: () {
                    GlobalData.matchCode = _matchCode.text;
                    print(GlobalData.matchCode);
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MyLaunchPage()),
                    );
                  },
                  child: Text("ScoreCard"),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.green,
                  ),
                ),
              ),
            ]),
          ),
        ),
      ],
    );
  }
}
