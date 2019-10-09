import 'package:flutter/material.dart';
import 'package:flutter_app/pages/home_screen.dart';

class EachView extends StatefulWidget {
  String _title;
  EachView(this._title);
  @override
  _EachViewState createState() => _EachViewState();
}

class _EachViewState extends State<EachView> {
  @override
  Widget build(BuildContext context) {
    if (widget._title == "Home") {
      return HomeScreen();
    }
    return Scaffold(
      appBar: AppBar(
        title: Text(widget._title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(widget._title),
            RawMaterialButton(
              child: Text('这是 ${widget._title}'),
              onPressed: () {
                print('从 ${widget._title} 返回');
                Navigator.pop(context, '从 ${widget._title} 返回');
                // Navigator.maybePop(context, '从 ${widget._title} 返回');
              },
            )
          ],
        )
      ),
    );
  }
}
