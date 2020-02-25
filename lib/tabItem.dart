import 'package:flutter/material.dart';

class TabItem extends StatefulWidget {
  final int ind;
  TabItem({Key key,@required this.ind}): super(key: key);

  @override
  _TabItemState createState() => _TabItemState();
}

class _TabItemState extends State<TabItem> {

   @override 
  void initState() {
    super.initState();
    print(widget.ind);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: <Widget>[
         Container(
            padding: const EdgeInsets.only(left:15.0,right:15.0,top:8.0,bottom: 8.0),
            alignment: Alignment.center,
            height: 40.0,
            width: 120.0,
            decoration: BoxDecoration(
                color: Colors.grey,
                border: Border.all(color: Colors.black54, width: 1.0),
                borderRadius: BorderRadius.circular(19.0)),
            child: TextFormField(
              decoration: InputDecoration.collapsed(hintText: 'hello'),
            ),
          )
      ],)
      );
  }
}