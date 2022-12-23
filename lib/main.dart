import 'package:flutter/material.dart';
import 'package:tvproject/Screens/LaunchScreen.dart';
import 'Screens/ScoreCardDisplay.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: LaunchScreen(),
        debugShowCheckedModeBanner: false);
  }
}
