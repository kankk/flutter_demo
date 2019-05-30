import 'package:flutter/material.dart';

class SnackBarPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {  // 该context是父Widget的context
    return Scaffold(
      appBar: AppBar(title: Text('SnackBar')),
      // body: RaisedButton(
      //   child: Text('Show SnackBar'),
      //   onPressed: () {
      //     Scaffold.of(context).showSnackBar(SnackBar(
      //       content: Text('SnackBar'),
      //       duration: Duration(seconds: 5),
      //     ));
      //   },
      // )
      body: Wrap(
        children: <Widget>[
          // 使用Builder解决context的问题
          Builder(  // Builder是一个闭包, 将Scaffold的context传递给子Widget
            builder: (_context) => RaisedButton(
              child: Text('Show SnackBar'),
              onPressed: () {
                Scaffold.of(_context).showSnackBar(SnackBar(
                  content: Text('SnackBar'),
                  duration: Duration(seconds: 5),
                ));
              },
            ),
          ),
          SnackBarNoBuilderWidget()
        ],
      )
    );
  }
}

// 使用SnackBar的Widget拆分出来
class SnackBarNoBuilderWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text('Show SnackBar withour Builder'),
      onPressed: () {
        Scaffold.of(context).showSnackBar(SnackBar(
          content: Text('SnackBar withour Builder'),
          duration: Duration(seconds: 5),
        ));
      },
    );
  }
}