import 'package:flutter/material.dart';

class SingleChildScrollViewWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('SingleChildScrollView')),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: <Widget>[
            Text('Hello SingleChildScrollView' * 100),
          ],
        ),
      )
    );
  }
}