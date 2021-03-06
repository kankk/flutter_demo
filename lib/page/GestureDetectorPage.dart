import 'package:flutter/material.dart';

class GestureDetectorPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('手势识别Widget')),
      body: GestureDetector(
        child: Text('手势识别'),
        onTap: () {
          print('点击');
        },
        onDoubleTap: () {
          print('双击');
        },
        onLongPress: () {
          print('长按');
        },
        onHorizontalDragStart: (DragStartDetails details) {
          print('水平滑动');
        },
      )
    );
  }
}