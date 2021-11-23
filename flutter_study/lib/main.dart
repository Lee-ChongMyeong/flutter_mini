import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // 왼쪽위 debug 사라짐
      title: 'BBANTO',
      home: Grade(),
    );
  }
}

class Grade extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[800],
      appBar: AppBar(
        title: Text('BBANTO'),
        backgroundColor: Colors.amber[700],
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 0.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, // CrossAxisAlignment : 가로축 정렬, 왼쪽 시작점 정렬
          children: <Widget>[
            Center(
              child: CircleAvatar( // CircleAvatar 위젯 : 동그란 이미지를 가져올 수 있음
                backgroundImage: AssetImage('assets/character1.png'), //AssetImage 위젯 : 이미지를 삽입할때 사용되는 위젯
                radius: 60.0 // radius : Circle의 크기를 조절할수 있는 속성
              ),
            ),
            Divider( // Diver 위젯 : 분리하구 구분하는 위젯
              height: 60.0, // divider 의 위아래 간격이 합쳐서 60.0이라는 의미
              color: Colors.grey[850],
              thickness: 0.5, // 두께 조절
              endIndent: 30.0// divider 선이 끝에서 부터 어느정도 떨어져야 될지 정해주는 속성
            ),
            Text('NAME',
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox( // SizeBox 위젯 : 두가지 속성을 가지고 있음, height, width / 원하는대로간격 만들수 있음.
              height: 10.0,
            ),
            Text('BBANTO',
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold
              )
            ),
            SizedBox( // SizeBox 위젯 : 두가지 속성을 가지고 있음, height, width / 원하는대로간격 만들수 있음.
              height: 30.0,
            ),
            Text('BBANTO POWER LEVEL',
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox( // SizeBox 위젯 : 두가지 속성을 가지고 있음, height, width / 원하는대로간격 만들수 있음.
              height: 10.0,
            ),
            Text('14',
                style: TextStyle(
                    color: Colors.white,
                    letterSpacing: 2.0,
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold
                ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Row(
              children: [
                Icon(Icons.check_circle_outline),  // Icon 위젯
                SizedBox(
                  width: 10.0,
                ),
                Text('using lightsaber',
                    style: TextStyle(
                      fontSize: 16.0,
                      letterSpacing: 1.0
                    ),
                ),
              ],
            ),
            Row(
              children: [
                Icon(Icons.check_circle_outline),  // Icon 위젯
                SizedBox(
                  width: 10.0,
                ),
                Text('face hero tattoo',
                  style: TextStyle(
                      fontSize: 16.0,
                      letterSpacing: 1.0
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Icon(Icons.check_circle_outline),  // Icon 위젯
                SizedBox(
                  width: 10.0,
                ),
                Text('fire flames',
                  style: TextStyle(
                      fontSize: 16.0,
                      letterSpacing: 1.0
                  ),
                ),
              ],
            ),
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/character2.png'),
                radius: 40.0,
                backgroundColor: Colors.amber[800],
              ),
            )
          ],
        )
      ),

    );
  }
}


