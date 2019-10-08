import 'package:flutter/material.dart';
import 'package:flutter_app/pages/home_list.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin{
  int _currentIndex = 0;
  List<Tab> tab = <Tab>[
    Tab(text: "个性推荐",),Tab(text: "周一",),Tab(text: "周二",),Tab(text: "周三",),Tab(text: "周四",),Tab(text: "周五",),Tab(text: "周六",),Tab(text: "周日",)
  ];
  TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: tab.length, vsync: this);
    _tabController.addListener((){
      _currentIndex = _tabController.index;
      print("selected tabBar ${tab[_tabController.index]} ${_tabController.index}");
    });
  }
  @override
  Widget build(BuildContext context) {

    return DefaultTabController(
      length: tab.length,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0.5,
          title: Text("首页"),
          centerTitle: true,
          backgroundColor: Colors.white,
          leading: Icon(Icons.face),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.alarm),
              tooltip: "Alarm",
              onPressed: () {
                print("Alarm");
              },
            ),
            IconButton(
              icon: Icon(Icons.home),
              tooltip: "Home",
              onPressed: () {
                print("Home");
              },
            )
          ],
          bottom: TabBar(
            controller: _tabController,
            indicatorColor: Colors.yellow,
            isScrollable: true,
            tabs: tab
          )
        ),
        body: TabBarView(
          controller: _tabController,
          children: tab.map((Tab tab) => Container(
            alignment: AlignmentDirectional.center,
            child: HomeList(_currentIndex),
          )).toList(),
        ),
      )
    );
  }
}
