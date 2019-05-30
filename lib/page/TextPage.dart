import 'package:flutter/material.dart';

class TextPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('文本框')),
      body: Wrap(
        children: <Widget>[
          Text('Hello World'),
          Text('Style Hello World',
            style: TextStyle(
              color: Colors.red,
              fontSize: 20.0,
              background: new Paint()..color = Colors.yellow
            ),
            textAlign: TextAlign.center
            ),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(text: "Hello", style: TextStyle(color: Colors.blue)),
                TextSpan(text: "Flutter", style: TextStyle(color: Colors.red))
              ],
              style: TextStyle(fontSize: 20.0)
            )
          )
        ],
      )
    );
  }
}