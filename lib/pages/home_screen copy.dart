import 'package:flutter/material.dart';

class Tab {
  final String title;
  Tab(this.title);
}
// Home(
//         tabs: List.generate(
//             8,
//             (i) => Tab(i > 0
//                 ? (i == 1
//                     ? "周一"
//                     : i == 2
//                         ? "周二"
//                         : i == 3
//                             ? "周三"
//                             : i == 4
//                                 ? "周四"
//                                 : i == 5 ? "周五" : i == 6 ? "周六" : "周日")
//                 : '个性推荐'))),

class HomeScreen extends StatelessWidget {
  final List<Tab> tabs;
  HomeScreen({Key key, @required this.tabs}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var capsule = Container(
      padding: EdgeInsets.fromLTRB(14.0, 25.0, 14.0, 0),
      color: Colors.yellow,
      height: 60.0,
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
          itemCount: tabs.length,
          itemBuilder: (context, index) {
            return Container(
              alignment: Alignment.center,
              padding: EdgeInsets.fromLTRB(12.0, 0.0, 12.0, 0.0),
              child: Text(
                '${tabs[index].title}',
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
                    width: 500.0,
                    height: 180.0,
                    color: Colors.lightBlue,
                    child: Image.asset(
                        "images/img1.jpg",
                        fit: BoxFit.cover)),
                Positioned(
                  bottom: 0.0,
                  left: 0.0,
                  child: Container(
                    width: 500.0,
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
      appBar: AppBar(
        title: Text("首页"),
        backgroundColor: Colors.yellow[600],
      ),
      body: Center(
          child: new Container(
              color: Colors.grey[100],
              child: Column(children: <Widget>[
                // capsule,
                tabBar,
                new Container(
                  height: 206.0,
                  child: new ListView(
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
