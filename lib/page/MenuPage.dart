import 'package:flutter/material.dart';

class MenuPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('菜单栏')),
      body: Wrap(
        children: <Widget>[
          PopupMenuButton<MenuItem>(
            child: Text('更多'),
            onSelected: (MenuItem result) {
              print('click: ' + result.toString());
            },
            itemBuilder: (BuildContext context) => <PopupMenuEntry<MenuItem>>[
              const PopupMenuItem<MenuItem>(
                value: MenuItem.menuA,
                child: Text('menu a'),
              ),
              const PopupMenuItem<MenuItem>(
                value: MenuItem.menuB,
                child: Text('menu b'),
              ),
              const PopupMenuItem<MenuItem>(
                value: MenuItem.menuC,
                child: Text('menu c'),
              ),
              const PopupMenuItem<MenuItem>(
                value: MenuItem.menuD,
                child: Text('menu d'),
              )
            ],
          )
        ],
      )
    );
  }
}

enum MenuItem { menuA, menuB, menuC, menuD }