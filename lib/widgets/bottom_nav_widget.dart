import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/pages/each_view.dart';
import 'package:flutter_app/widgets/custome_router.dart';

/**
    const FloatingActionButton({
      Key key,
      this.child,//按钮显示的内容
      this.tooltip,//长按时显示的提示
      this.foregroundColor,//前景色，影响到文字颜色
      this.backgroundColor,//背景色
      this.heroTag = const _DefaultHeroTag(),//hero效果使用的tag,系统默认会给所有FAB使用同一个tag,方便做动画效果
      this.elevation = 6.0,//未点击时阴影值
      this.highlightElevation = 12.0,//点击下阴影值
      @required this.onPressed,
      this.mini = false,//FloatingActionButton有regular, mini, extended三种类型，默认为false即regular类型,true时按钮变小即mini类型，extended需要通过FloatingActionButton.extended()创建，可以定制显示内容
      this.shape = const CircleBorder(),//定义FAB的shape，设置shape时，默认的elevation将会失效,默认为CircleBorder
      this.clipBehavior = Clip.none,
      this.materialTapTargetSize,
      this.isExtended = false,//是否为”extended”类型
    })
  */
/**
      BottomNavigationBar({
      Key key,
      @required this.items,//子选项
      this.onTap,
      this.currentIndex = 0,//选中第几个
      BottomNavigationBarType type,
      this.fixedColor,//文字颜色
      this.iconSize = 24.0,//icon图片大小
      })
  */

/**
      const BottomNavigationBarItem({
      @required this.icon,//未选中图标
      this.title,//文字
      Widget activeIcon,//选中图标
      this.backgroundColor,// 测试发现type设置为shifting时，backgroundColor才有效
      })
  */

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
    _eachView
      ..add(EachView("Home"))
      ..add(EachView("add"))
      ..add(EachView("add"))
      ..add(EachView("add"))
      ..add(EachView("Setting"));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _eachView[_currentIndex],
      floatingActionButton: Container(
          height: 80,
          width: 80,
          alignment: Alignment.center,
          margin: EdgeInsets.only(top: 30),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40),
              topRight: Radius.circular(40),
            ),
          ),
          child: Column(
            children: <Widget>[
              Container(
                height: 58,
                width: 58,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(40)),
                    color: Colors.yellow,
                    boxShadow: [BoxShadow(color: Color.fromARGB(5, 100, 100, 100), blurRadius: .5, offset: Offset(0, -2))],
                    border: Border.all(
                        color: Colors.white,
                        width: 4,
                        style: BorderStyle.solid)),
                child: FloatingActionButton(
                  backgroundColor: Colors.yellow,
                  mini: true,
                  elevation: 0,
                  highlightElevation: 0.0,
                  tooltip: "按这么长时间干嘛",
                  child: Icon(
                    Icons.add,
                    color: Colors.black87,
                    size: 40,
                  ),
                  onPressed: () {
                    Navigator.of(context).push(CustomeRoute(EachView("发布页面")));
                  },
                ),
              ),
              Text(
                '发布',
                style: TextStyle(fontSize: 10, color: Colors.black26),
              )
            ],
          )),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavigationBar(
        elevation: 8,
        iconSize: 26,
        selectedFontSize: 10,
        unselectedFontSize: 10,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black54,
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        onTap: (int index) {
          setState(() {
            this._currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("首页")),
          BottomNavigationBarItem(
              icon: Icon(Icons.find_in_page), title: Text("发现")),
          BottomNavigationBarItem(
              icon: Icon(Icons.category), title: Text("发布")),
          BottomNavigationBarItem(icon: Icon(Icons.watch), title: Text("世界")),
          BottomNavigationBarItem(icon: Icon(Icons.people), title: Text("我的"))
        ],
      ),
      // bottomNavigationBar: BottomAppBar(
      //   shape: CircularNotchedRectangle(),
      //   color: Colors.white,
      //   child: Row(
      //     mainAxisSize: MainAxisSize.max,
      //     mainAxisAlignment: MainAxisAlignment.spaceAround,
      //     children: <Widget>[
      //       IconButton(
      //         icon: Icon(Icons.home),
      //         color: Colors.black45,
      //         onPressed: (){
      //           setState(() {
      //             _currentIndex = 0;
      //           });
      //         },
      //       ),
      //       IconButton(
      //         icon: Icon(Icons.face),
      //         color: Colors.black45,
      //         onPressed: (){
      //           setState(() {
      //             _currentIndex = 1;
      //           });
      //         },
      //       )
      //     ],
      //   ),
      // ),
    );
  }
}
