import 'package:flutter/material.dart';
import 'bottom_nav_widget.dart';



void main()=> runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "",
      theme: ThemeData(
        primarySwatch: Colors.yellow
      ),
      home: BottomNavigationWeiget(),
    );
  }
}

class Goods extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("详情页"),
        backgroundColor: Colors.yellow[600],
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            RaisedButton(
              child: Text("aaa"),
              onPressed: () {
                Navigator.pop(context, 'aaa返回');
              },
            ),
            RaisedButton(
              child: Text("bbb"),
              onPressed: () {
                Navigator.pop(context, 'bbb返回');
              },
            ),
          ],
        ),
      ),
    );
  }
}
