import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Appbar',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Appbar icon menu'),
        centerTitle: true,
        elevation: 0.0,
        actions: [
          IconButton( // leading 속성 : 간단한 위젯이나 아이콘등을 appbar 타이틀 왼쪽에 위치시키는 기
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              print('shopping_cart is clikced');
            },
          ),
          IconButton( // leading 속성 : 간단한 위젯이나 아이콘등을 appbar 타이틀 왼쪽에 위치시키는 기
            icon: Icon(Icons.search),
            onPressed: () {
              print('search is clikced');
            },
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero, // padding : zero
          children: <Widget>[
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/character1.png'),
              ),
              otherAccountsPictures: [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/character2.png'),
                  backgroundColor: Colors.white,
                ),
                // CircleAvatar(
                //   backgroundImage: AssetImage('assets/character2.png'),
                //   backgroundColor: Colors.white,
                // ),
              ],
              accountName: Text('Cleverlee'),
              accountEmail: Text('dlchdaud1327@gmail.com'),
              onDetailsPressed:(){// 밑으로 펼쳐지는 화살표 기능 옵션, 기능을 수행할 (){} 함수 모습을 구현해 줘야됨.
                print('arrow is clikced');
              },
              decoration: BoxDecoration(
                color: Colors.red[200],
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40.0),
                  bottomRight: Radius.circular(40.0)
                )
              ),
            ),
            ListTile( // ListTile 위젯 : 각 리스트 한줄한줄을 의미
              leading: Icon(Icons.home,
              color: Colors.grey[850]
              ),
              title: Text('Home'),
              onTap: (){ // ListTile에서 onTap 함수는 일반 버튼과는 달리, 탭하거니 길게누르기 등 액션을 감지할수 있는 능력을 가지고 있음,
                print('Home is Clicked');
              },
              trailing: Icon(Icons.add)  // trailing:  우측 끝나는 점에 아이콘과 이미지를 배치할수 있는 속성도 존재할것이다.
            ),
            ListTile( // ListTile 위젯 : 각 리스트 한줄한줄을 의미
                leading: Icon(Icons.settings,
                    color: Colors.grey[850]
                ),
                title: Text('Setting'),
                onTap: (){
                  print('Setting is Clicked');
                },
                trailing: Icon(Icons.add)
            ),
            ListTile( // ListTile 위젯 : 각 리스트 한줄한줄을 의미
                leading: Icon(Icons.question_answer,
                    color: Colors.grey[850]
                ),
                title: Text('Q&A'),
                onTap: (){
                  print('Q&A is Clicked');
                },
                trailing: Icon(Icons.add)
            ),

          ],
        ),
      ),
    );
  }
}


