import 'package:flutter/material.dart';

import 'each_view.dart';

class BottomNavigationWeiget extends StatefulWidget {
  @override
  _BottomNavigationWeigetState createState() => _BottomNavigationWeigetState();
}

class _BottomNavigationWeigetState extends State<BottomNavigationWeiget> {
  int _currentIndex = 0;
  List<Widget> _eachView;
  @override
  void initState() {
    
    super.initState();
    _eachView = List();
    _eachView..add(EachView("Home"))..add(EachView("Face"));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _eachView[_currentIndex],
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.of(context).push(MaterialPageRoute(builder:(BuildContext context){
            return EachView("new pages");
          }));
        },
        tooltip: "添加",
        child: Icon(
          Icons.add,
          color: Colors.black45,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        shape: CircularNotchedRectangle(),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.home),
              color: Colors.black45,
              onPressed: (){
                setState(() {
                  _currentIndex = 0;
                });
              },
            ),
            IconButton(
              icon: Icon(Icons.face),
              color: Colors.black45,
              onPressed: (){
                setState(() {
                  _currentIndex = 1;
                });
              },
            )
          ],
        ),
      ),
    );
  }
}