import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    final _ViewportWidth = _size.width;
    final _ViewportHeight = _size.height;

    
    final _kToolbarHeight = kToolbarHeight;
    // final _kBottomNavigationBarHeight = kBottomNavigationBarHeight;
    // final _kTextTabBarHeight = kTextTabBarHeight;
    // 状态栏高度
    final _statusBarHeight = MediaQuery.of(context).padding.top;

    // print('${_kToolbarHeight} ------ ${_kBottomNavigationBarHeight} ------------------ ${_kTextTabBarHeight}');

    var capsule = Container(
      padding: EdgeInsets.fromLTRB(14.0, 0, 14.0, 0),
      color: Colors.yellow,
      height: _kToolbarHeight - _statusBarHeight,
      alignment: Alignment.center,
      child: Row(
        children: <Widget>[
          CircleAvatar(
            backgroundImage: AssetImage("images/img1.jpg"),
            radius: 12.0,
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.fromLTRB(50.0, 4.0, 50.0, 4.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.brown,
                  border: Border.all(color: Colors.brown, width: 2.0, style: BorderStyle.solid),
                  borderRadius: BorderRadius.circular((40.0))
                ),
                child: Row(
                  children: <Widget>[
                    MaterialButton(
                      child: Text("data"),
                      color: Colors.black,
                    ),
                  ],
                ),
              ),
            ),
          ),
          CircleAvatar(
            backgroundImage: AssetImage("images/img1.jpg"),
            radius: 12.0,
          ),
        ],
      ),
    );
    var tabBar = Container(
      height: 40.0,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(bottom: BorderSide(color: Colors.grey[200])),
      ),
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 8,
          itemBuilder: (context, index) {
            return Container(
              alignment: Alignment.center,
              padding: EdgeInsets.fromLTRB(12.0, 0.0, 12.0, 0.0),
              child: Text(
                // '${tabs[index].title}',
                '个性推荐',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14.0,
                  color: Colors.black54,
                ),
              )
            );
          }
        )
    );
    var goodsItem = Container(
      margin: EdgeInsets.fromLTRB(0.0, 4.0, 0.0, 0.0),
      color: Colors.white,
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.fromLTRB(12.0, 8.0, 12.0, 8.0),
            child: new Row(
              children: <Widget>[
                Expanded(
                  child: new Container(
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Container(
                            child: Text(
                              '恋爱',
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
                                '再度与你',
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black87,
                                  fontSize: 16.0,
                                ),
                              ))
                        ],
                      ),
                      Container(
                          padding: EdgeInsets.fromLTRB(0.0, 6.0, 0.0, 0.0),
                          alignment: Alignment.centerLeft,
                          child: new Text(
                            '作者: 韩旭L-Mo',
                            style: TextStyle(
                              color: Colors.black45,
                              fontSize: 14.0,
                            ),
                          ))
                    ],
                  ),
                )),
                new Container(
                    child: new Text(
                  '全集 >',
                  style: TextStyle(color: Colors.black45, fontSize: 14.0),
                )),
              ],
            ),
          ),
          RawMaterialButton(
            onPressed: () {
              // _goodsAsync(context);
            },
            child: Stack(
              children: <Widget>[
                Container(
                    width: _ViewportWidth,
                    height: _ViewportWidth/5*2.8,
                    color: Colors.lightBlue,
                    child: Image.asset(
                        "images/img1.jpg",
                        fit: BoxFit.cover)),
                Positioned(
                  bottom: 0.0,
                  left: 0.0,
                  child: Container(
                    width: _ViewportWidth,
                    padding: EdgeInsets.all(8),
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
                            fontSize: 15.0,
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
    


    return Scaffold(
      appBar: PreferredSize(
        child: AppBar(),
        preferredSize: Size.fromHeight(0)
      ),
      body: Center(
          child: Container(
              child: Column(children: <Widget>[
                capsule,
                tabBar,
                Container(
                  height: _ViewportHeight - 150.0,
                  color: Colors.grey[100],
                  child: ListView(
                    children: <Widget>[
                      goodsItem,
                      goodsItem,
                      goodsItem,
                      goodsItem,
                      goodsItem,
                      goodsItem,
                      goodsItem,
                      goodsItem,
                      goodsItem,
                    ],
                  ),
                ),
              ]))),
    );
  }

  // _goodsAsync(BuildContext context) async {
  //   final result = await Navigator.push(
  //       context, MaterialPageRoute(builder: (context) => Goods()));
  //   Scaffold.of(context).showSnackBar(SnackBar(content: Text('$result')));
  // }
}
