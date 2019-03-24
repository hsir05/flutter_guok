
import 'package:flutter/material.dart';
// import './home.dart';
import './drawerPage.dart';
import './tabItem.dart';

class MyHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyHomePageState();
  }
}

class _MyHomePageState extends State<MyHomePage> 
  with SingleTickerProviderStateMixin {
  
   TabController _tabController;
  ScrollController _scrollViewController;
  List<Tab> tabList;

  @override 
  void initState() {
    super.initState();
    initTabData();
    _tabController = TabController(vsync: this, length: tabList.length);
    _scrollViewController = ScrollController(initialScrollOffset: 0.0);
  }

  @override
  void dispose() {
    _tabController.dispose();
    _scrollViewController.dispose();
    super.dispose();
  }

  initTabData() {
    tabList = [
      Tab(text:'推荐'),
      Tab(text:'热点'),
      Tab(text:'社会'),
      Tab(text:'娱乐'),
      Tab(text:'体育'),
      Tab(text:'美文'),
      Tab(text:'科技'),
      Tab(text:'财经'),
      Tab(text:'时尚'),
    ];
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
          controller: _scrollViewController,
          headerSliverBuilder: (BuildContext context, bool boxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                title: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text('果壳精选'),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(left: 20.0),
                        padding: const EdgeInsets.only(left:15.0,right:15.0,top:2.0,bottom: 4.0),
                        alignment: Alignment.center,
                        height: 30.0,
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          border: Border.all(color: Colors.white, width: 1.0),
                          borderRadius: BorderRadius.circular(19.0)),
                          child: TextFormField(
                            decoration: InputDecoration.collapsed(hintText: '搜索你感兴趣的内容',hintStyle: TextStyle(color: Colors.white)),
                          ),
                      ))
                  ],
                ),
                pinned: true,
                floating: true,
                forceElevated: boxIsScrolled,
                expandedHeight: 110.0,
                bottom: TabBar(
                  isScrollable: true,
                  controller: _tabController,
                  indicatorColor: Colors.greenAccent,
                  indicatorWeight: 4.0,
                  indicatorPadding: EdgeInsets.only(bottom: 2.0),
                  tabs: tabList,
                ),
              )
            ];
          },
          body: TabBarView(
            children: tabList.map((Tab tab) =>
               Container(child: Center(child: Text(tab.text),),)).toList(),
            controller: _tabController,
          ),
        ),
      drawer: DrawerPage(),);
  }
}