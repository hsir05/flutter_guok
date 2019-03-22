
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyHomePageState();
  }
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    Widget userHeader = UserAccountsDrawerHeader(
      accountName: Text('Tom'),
      accountEmail: Text('tom@xxx.com'),
      currentAccountPicture: CircleAvatar(
        backgroundImage: AssetImage('assets/images/timg.jpeg'), radius: 35.0,),);

    return Scaffold(appBar: AppBar(title: Text("Home"),),
      body: Center(child: Text('Home page'),),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            userHeader , // 可在这里替换自定义的header
            ListTile(title: Text('Item 1'),
              leading: CircleAvatar(child: Icon(Icons.school),),
              onTap: () {
                Navigator.pop(context);
              },),
            ListTile(title: Text('Item 2'),
              leading: CircleAvatar(child: Text('B2'),),
              onTap: () {
                Navigator.pop(context);
              },),
            ListTile(title: Text('Item 3'),
              leading: CircleAvatar(
                child: Icon(Icons.list),),
              onTap: () {
                Navigator.pop(context);
              },),
          ],
        ),
      ),);
  }
}
