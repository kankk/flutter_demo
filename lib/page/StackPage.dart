import 'package:flutter/material.dart';

class StackPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('层叠布局')),
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Positioned(
            left: 20,
            top: 0,
            child: Image.asset(
              'images/mangokk.png',
              width: 200,
              height: 200,
              fit: BoxFit.cover
            ),
          ),
          Positioned(
            left: 20,
            top: 300,
            child: Text('Hello Stack', style: TextStyle(fontSize: 50.0)),
          )
        ],
      ),
    );
  }
}