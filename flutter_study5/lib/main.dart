import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',

      home: MyPage()
    );
  }
}

class MyPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: SafeArea(
        child: Container(
          color: Colors.red,
          width: 100,
          height: 100,
          // margin: EdgeInsets.all(20),
            margin: EdgeInsets.symmetric(
              vertical: 80, // 위아래로 80
              horizontal: 20 // 좌우로 20
            ),
            padding: EdgeInsets.all(40),
            child: Text('Hello')
        ),
      ),
    );
  }
}
