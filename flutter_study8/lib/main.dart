import 'package:flutter/material.dart';
import 'package:flutter_study8/ScreenA.dart';
import 'ScreenB.dart';
import 'ScreenC.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/', // 첫  라우터의 이름
      routes: {
        '/' : (context) => ScreenA(), // key 값인 ' / ' 가 불려지면 value 값인 ScreenA 가 build 되어야 된다는 의미임.
        '/b' : (context) => ScreenB(),
        '/c' : (context) => ScreenC()
      },
    );
  }
}

