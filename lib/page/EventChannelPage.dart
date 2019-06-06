import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class EventChannelPage extends StatefulWidget {
  _EventChannelPageState createState() => _EventChannelPageState();
}

class _EventChannelPageState extends State<EventChannelPage> {
  static const eventChannel = const EventChannel('samples.flutter.io/event');

  String textContent = 'Flutter Message';

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    eventChannel.receiveBroadcastStream().listen(_onListen,
        onError: _onError, onDone: _onDone, cancelOnError: false);
  }

  void _onListen(dynamic data) {
    setState(() {
      textContent = data;
    });
  }

  void _onError(dynamic err) {
    setState(() {
      textContent = 'EventChannel error';
    });
  }

  void _onDone() {
    setState(() {
      textContent = 'EventChannel done';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('EventChannel')),
      body: Container(
        child: Row(
          children: <Widget>[
            Text(textContent)
          ],
        ),
      )
    );
  }
}
