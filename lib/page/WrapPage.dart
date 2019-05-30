import 'package:flutter/material.dart';

class WrapPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('流式布局')),
      body: Wrap(
        direction: Axis.horizontal,
        spacing: 8.0, // 主轴方向间距
        runSpacing: 12.0, // 交叉轴方向间距
        alignment: WrapAlignment.center,
        runAlignment: WrapAlignment.start,
        children: <Widget>[
          new Chip(
            avatar: new CircleAvatar(
              backgroundColor: Colors.blue,
              child: Text('A'),
            ),
            label: new Text('AAAAA'),
          ),
          new Chip(
            avatar: new CircleAvatar(
              backgroundColor: Colors.blue,
              child: Text('B'),
            ),
            label: new Text('BBBBB'),
          ),
          new Chip(
            avatar: new CircleAvatar(
              backgroundColor: Colors.blue,
              child: Text('A'),
            ),
            label: new Text('AAAAA'),
          ),
          new Chip(
            avatar: new CircleAvatar(
              backgroundColor: Colors.blue,
              child: Text('C'),
            ),
            label: new Text('CCCCC'),
          ),
          new Chip(
            avatar: new CircleAvatar(
              backgroundColor: Colors.blue,
              child: Text('D'),
            ),
            label: new Text('DDDDD'),
          )
        ],
      ),
    );
  }
}