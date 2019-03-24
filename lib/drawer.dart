import 'package:flutter/material.dart';

class UserHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return UserAccountsDrawerHeader(
      accountName: Text('Tom'),
      accountEmail: Text('tom@xxx.com'),
      currentAccountPicture: CircleAvatar(
        backgroundImage: AssetImage('assets/images/timg.jpeg'), radius: 35.0,),);
  }
}