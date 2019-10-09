import 'package:flutter/material.dart';
import 'package:flutter_app/pages/home_list.dart';

/**
    AppBar({
    Key key,
    this.leading,//在标题前面显示的一个控件，在首页通常显示应用的 logo；在其他界面通常显示为返回按钮
    this.automaticallyImplyLeading = true,
    this.title,//Toolbar 中主要内容，通常显示为当前界面的标题文字
    this.actions,//一个 Widget 列表，代表 Toolbar 中所显示的菜单，对于常用的菜单，通常使用 IconButton 来表示；对于不常用的菜单通常使用 PopupMenuButton 来显示为三个点，点击后弹出二级菜单
    this.flexibleSpace,//一个显示在 AppBar 下方的控件，高度和 AppBar 高度一样，可以实现一些特殊的效果，该属性通常在 SliverAppBar 中使用
    this.bottom,//一个 AppBarBottomWidget 对象，通常是 TabBar。用来在 Toolbar 标题下面显示一个 Tab 导航栏
    this.elevation = 4.0,//纸墨设计中控件的 z 坐标顺序，默认值为 4，对于可滚动的 SliverAppBar，当 SliverAppBar 和内容同级的时候，该值为 0， 当内容滚动 SliverAppBar 变为 Toolbar 的时候，修改 elevation 的值
    this.backgroundColor,//APP bar 的颜色，默认值为 ThemeData.primaryColor。改值通常和下面的三个属性一起使用
    this.brightness,//App bar 的亮度，有白色和黑色两种主题，默认值为 ThemeData.primaryColorBrightness
    this.iconTheme,//App bar 上图标的颜色、透明度、和尺寸信息。默认值为 ThemeData.primaryIconTheme
    this.textTheme,//App bar 上的文字样式。默认值为 ThemeData.primaryTextTheme
    this.primary = true,
    this.centerTitle,//标题是否居中显示，默认值根据不同的操作系统，显示方式不一样,true居中 false居左
    this.titleSpacing = NavigationToolbar.kMiddleSpacing,
    this.toolbarOpacity = 1.0,
    this.bottomOpacity = 1.0,
    })
 */

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
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(78),
          child: 
          AppBar(
            elevation: 0.3,
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
              indicatorColor: Colors.yellow[600],
              indicatorWeight: 2,
              isScrollable: true,
              tabs: tab
            )
          ),
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
