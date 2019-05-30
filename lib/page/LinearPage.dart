import 'package:flutter/material.dart';

class LinearPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('线性布局')),
      body: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Text('Row Span 1'),
              Text('Row Span 2', style: TextStyle(
                fontSize: 30.0
              ),)
            ],
          ),
          Column(
            children: <Widget>[
              Text('Column Span 1'),
              Text('Column Span 2', style: TextStyle(
                fontSize: 30.0
              ),)
            ],
          )
        ],
      ),
    );
  }
}