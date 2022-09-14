import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_introductionpages/flutter_introductionpages.dart';

void main() {
  runApp(const MaterialApp(home: FlutterIntroductionDemo()));
}

class FlutterIntroductionDemo extends StatelessWidget {
  const FlutterIntroductionDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Theme(
        data:Theme.of(context).copyWith(backgroundColor: Colors.amber),
        child: IntroductionPages(
      introductionSettings: IntroductionSettings(buttonMode: IntroductionScreenButtonMode.Text, showFinishButton: true),
      onComplete:(){
        if (kDebugMode) {
          print("done!");
        }
      }, pages:[
      IntroductionPage(title: "iojij", text: "hello"),
      IntroductionPage(text: "hello"),
      IntroductionPage(text: "hello"),
    ], child:Container())));
  }
}