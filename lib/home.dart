import 'package:flutter/material.dart';

class SilverBar extends StatefulWidget {
  @override
  _SilverBarState createState() => _SilverBarState();
}

class _SilverBarState extends State<SilverBar> {
  TabController _tabController;
  ScrollController _scrollViewController;

  @override 
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 9);
    _scrollViewController = ScrollController(initialScrollOffset: 0.0);
  }

  @override
  void dispose() {
    _tabController.dispose();
    _scrollViewController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
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
        tabs: <Widget>[
          Tab( text: "全部"),
          Tab( text: "科技"),
          Tab( text: "奇趣"),
          Tab( text: "生活"),
          Tab( text: "健康"),
          Tab( text: "人文"),
          Tab( text: "自然"),
          Tab( text: "数码"),
          Tab( text: "美食"),
        ],
      ),
    );
  }
}