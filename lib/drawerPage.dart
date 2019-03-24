import 'package:flutter/material.dart';
import './drawer.dart';

class DrawerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserHeader() , // 可在这里替换自定义的header
            ListTile(title: Text('首页'),
              leading: CircleAvatar(child: Icon(Icons.school),),
              onTap: () {
                Navigator.pop(context);
            }),
            Divider(),  
            ListTile(title: Text('消息'),
              leading: CircleAvatar(child: Text('B2')),
              onTap: () {
                Navigator.pop(context);
            }),
            Divider(), 
            ListTile(title: Text('收藏夹'),
              leading: CircleAvatar(
                child: Icon(Icons.list)),
              onTap: () {
                Navigator.pop(context);
            }),
            Divider(), 
            ListTile(title: Text('设置'),
            leading: CircleAvatar(
              child: Icon(Icons.list)),
            onTap: () {
              Navigator.pop(context);
            }),
            Divider(), 
          ],
        ),
      );
  }
}