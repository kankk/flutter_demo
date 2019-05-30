import 'package:flutter/material.dart';

class ListViewPage extends StatelessWidget {

  var listItems = List<String>.generate(1000, (index) => 'Item $index');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ListView')),
      body: ListView.separated(
        itemCount: listItems.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('${listItems[index]}'),
          );
        },
        separatorBuilder: (context, index) {
          return Container(
            constraints: BoxConstraints.tightFor(height: 10),
            color: Colors.orange,
          );
        },
      )
    );
  }
}