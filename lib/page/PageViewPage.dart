import 'package:flutter/material.dart';

class PageViewPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('PageView')),
      body: PageView(
        onPageChanged: (index) {
          print('current page $index');
        },
        children: <Widget>[
          ListTile(title: Text('Title0')),
          ListTile(title: Text('Title1')),
          ListTile(title: Text('Title2')),
          ListTile(title: Text('Title3')),
          ListTile(title: Text('Title4')),
        ],
      ),
    );
  }
}