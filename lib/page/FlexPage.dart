import 'package:flutter/material.dart';

class FlexPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('弹性布局')),
      body: Flex(
        direction: Axis.horizontal,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Container(
              height: 20.0,
              width: 30.0,
              color: Colors.yellow
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              height: 40.0,
              width: 100.0,
              color: Colors.blue
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              height: 50.0,
              width: 200.0,
              color: Colors.red
            ),
          ),
        ],
      )
    );
  }
}