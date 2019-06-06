import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MethodChannelPage extends StatefulWidget {
  MethodChannelPage({Key key}) : super(key: key);

  _MethodChannelPageState createState() => _MethodChannelPageState();
}

class _MethodChannelPageState extends State<MethodChannelPage> {

  static const platformChannel_Toast =
      const MethodChannel('samples.flutter.io/toast');
  static const platformChannel_message =
          const MethodChannel('samples.flutter.io/message');

  String textContent = 'Flutter Message';
  
   @override
    void initState() {
      super.initState();
      platformChannel_message.setMethodCallHandler((methodCall) async {
        switch (methodCall.method) {
          case 'showText':
            String content = await methodCall.arguments['content'];
            if (content !=null && content.isNotEmpty) {
              setState(() {
                textContent = content;
              });
              return 'success';
            } else {
              throw PlatformException(
                  code: '-1',
                  message: 'showText fail',
                  details: 'content is null');
            }
            break;
          default:
            throw MissingPluginException();
        }
      });
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('MethodChannel')),
      body: Container(
        child: Row(
          children: <Widget>[
            RaisedButton(
              child: Text('Show Android Toast'),
              onPressed: () {
                showToast('Flutter Toast');
              },
            ),
            Text(textContent)
          ],
        ),
      )
    );
  }

  void showToast(String content) async {
    var arguments = Map();
    arguments['content'] = content;

    try {
      String result = await platformChannel_Toast.invokeMethod('toast', arguments);
      print('showToast: ' + result);
    } on PlatformException catch (e) {
      print('showToast ' + e.code + e.message + e.details);
    } on MissingPluginException catch (e) {
      print('showToast ' + e.message);
    }
  }
}