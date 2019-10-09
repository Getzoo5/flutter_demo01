import 'dart:math';
import "package:flutter/material.dart";
import 'package:flutter_app/widgets/custome_router.dart';
import 'package:flutter_app/pages/each_view.dart';

class HomeList extends StatefulWidget {
  int _currentIndex; // tab index
  HomeList(this._currentIndex);
  @override
  _HomeListState createState() => _HomeListState();
}

class _HomeListState extends State<HomeList> {
  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    final _ViewportWidth = _size.width;

    return Container(child: ListView(children: _getListData(_ViewportWidth)));
  }

  _getListData(_ViewportWidth) {
    List<Widget> widgets = [];
    // 模拟数据
    _goodsItem(index) {
      return Container(
        margin: EdgeInsets.fromLTRB(0.0, 4.0, 0.0, 0.0),
        color: Colors.white,
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.fromLTRB(12.0, 8.0, 12.0, 8.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                      child: Container(
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Container(
                              child: Text(
                                "鬼畜",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14.0,
                                ),
                              ),
                              alignment: Alignment.centerLeft,
                              padding: EdgeInsets.fromLTRB(4.0, 0.0, 4.0, 0.0),
                              margin: EdgeInsets.fromLTRB(0.0, 0.0, 4.0, 0.0),
                              decoration: BoxDecoration(
                                  color: Colors.pinkAccent,
                                  borderRadius: BorderRadius.circular((4.0))),
                            ),
                            Container(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  '再度与你${index + 1}',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black87,
                                    fontSize: 18.0,
                                  ),
                                ))
                          ],
                        ),
                        Container(
                            padding: EdgeInsets.fromLTRB(0.0, 6.0, 0.0, 0.0),
                            alignment: Alignment.centerLeft,
                            child: Text(
                              '作者：韩旭L-Mo',
                              style: TextStyle(
                                color: Colors.black45,
                                fontSize: 14.0,
                              ),
                            ))
                      ],
                    ),
                  )),
                  Row(
                    children: <Widget>[
                      Text(
                        '全集',
                        style: TextStyle(color: Colors.black45, fontSize: 15.0),
                      ),
                      Icon(Icons.navigate_next,color: Colors.black45,)
                    ]
                  ),
                ],
              ),
            ),
            RawMaterialButton(
              onPressed: () {
                _goodsAsync(context, index);
              },
              child: Stack(
                children: <Widget>[
                  Container(
                      width: _ViewportWidth,
                      height: _ViewportWidth / 5 * 2.8,
                      color: Colors.lightBlue,
                      child: Image.asset("images/img1.jpg", fit: BoxFit.cover)),
                  Positioned(
                    bottom: 0.0,
                    left: 0.0,
                    child: Container(
                      width: _ViewportWidth,
                      padding: EdgeInsets.fromLTRB(12.0, 8.0, 12.0, 8.0),
                      child: Text(
                        '技术胖',
                        style: TextStyle(
                            fontSize: 16.0,
                            color: Colors.white,
                            fontWeight: FontWeight.w500),
                      ),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.transparent,
                            Colors.black45,
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(12.0, 16.0, 12.0, 16.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                      child: Container(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            '第5话(下) 败露',
                            style: TextStyle(
                              color: Colors.black87,
                              fontSize: 16.0,
                            ),
                          ))),
                  Container(
                      child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.add_comment,
                        size: 16.0,
                        color: Colors.grey[400],
                      ),
                      Text(
                        ' 6919   ',
                        style: TextStyle(
                          fontSize: 14.0,
                          color: Colors.grey,
                        ),
                      ),
                      Icon(
                        Icons.account_balance,
                        size: 16.0,
                        color: Colors.grey[400],
                      ),
                      Text(
                        ' 22万',
                        style: TextStyle(fontSize: 14.0, color: Colors.grey),
                      ),
                    ],
                  ))
                ],
              ),
            )
          ],
        ),
      );
    }

    for (int i = 0; i < 100; i++) {
      widgets.add(_goodsItem(i));
    }
    return widgets;
  }

  _goodsAsync(BuildContext context, index) async {
    final result = await Navigator.of(context).push(CustomeRoute(EachView("detail ${index + 1}")));
    print('result-----${result}');
    if(result){       // 自定义按钮返回传参
      Scaffold.of(context).showSnackBar(SnackBar(content: Text('$result')));
    }
  }
}
