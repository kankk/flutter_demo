import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class DialogPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('对话框')),
      body: Builder(
        builder: (context) => Wrap(
          children: <Widget>[
            RaisedButton(
              child: Text('Show About Dialog'),
              onPressed: () {
                showAboutDialog(
                  context: context,
                  applicationName: 'ShowAboutDialog',
                  applicationVersion: '1.0.0'
                );
              },
            ),
            RaisedButton(
              child: Text('Show SimpleDialog'),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => SimpleDialog(
                    title: Text('SimpleDialog Demo'),
                    children: <Widget>[
                      SimpleDialogOption(
                        child: Text('OK'),
                        onPressed: () {
                          print('SimpleDialog OK');
                          // 用于关闭Dialog
                          Navigator.of(context).pop();
                        },
                      ),
                      SimpleDialogOption(
                        child: Text('CANCEL'),
                        onPressed: () {
                          // 用于关闭Dialog
                          Navigator.of(context).pop();
                          // 同样会执行
                          print('SimpleDialog CANCEL');
                        },
                      )
                    ],
                  )
                );
              },
            ),
            RaisedButton(
              child: Text('Show AlertDialog'),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: Text('AlertDialog'),
                    content: SingleChildScrollView(
                      child: ListBody(
                        children: <Widget>[
                          Text('This is an alert dialog'),
                          Text('add two options')
                        ],
                      ),
                    ),
                    actions: <Widget>[
                      FlatButton(
                        child: Text('OK'),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                      FlatButton(
                        child: Text('CANCEL'),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      )
                    ],
                  )
                );
              },
            ),
            RaisedButton(
              child: Text('Show CupertinoAlertDialog'),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => CupertinoAlertDialog(
                    title: Text('CupertinoAlertDialog'),
                    content: Text('This is a CupertinoAlertDialog'),
                    actions: <Widget>[
                      CupertinoDialogAction(
                        child: Text('OK'),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                      CupertinoDialogAction(
                        child: Text('CANCEL'),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      )
                    ],
                  )
                );
              },
            )
          ],
        ),
      ),
    );
  }
}