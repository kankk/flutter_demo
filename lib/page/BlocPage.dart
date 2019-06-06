import 'dart:async';

import 'package:flutter/material.dart';

import 'package:bloc/bloc.dart';

class BlocPage extends StatefulWidget {
  BlocPage({Key key}) : super(key: key);

  _BlocPageState createState() => _BlocPageState();
}

class _BlocPageState extends State<BlocPage> {

  int _count = 0;

  static final StreamController<int> _streamController = StreamController<int>();
  static final StreamSink<int> _sink = _streamController.sink;
  static final Stream<int> _stream = _streamController.stream;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('BLoC')),
      body: StreamBuilder(
        stream: _stream,
        initialData: 0,
        builder: (context, snapShot) {
          return Center(
            child: Text('${snapShot.data}'),
          );
        }
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          _calculate();
        },
      ),
    );
  }

  void _calculate() {
    _sink.add(++_count);
  }
}

// enum CounterEvent { increment, decrement }
// class CountBloc extends Bloc<CounterEvent, int> {
  
//   @override
//   int get initialState => 0;
  
//   @override
//   Stream<int> mapEventToState(CounterEvent event) async* {
//     switch (event) {
//       case CounterEvent.decrement:
//         yield currentState - 1;
//         break;
//       case CounterEvent.increment:
//         yield currentState + 1;
//         break;
//     }
//   }
// }

