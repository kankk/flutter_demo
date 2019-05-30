import 'package:flutter/material.dart';

class BottomSheetPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('BottomSheet')),
      body: Builder(
        builder: (context) {
          return Wrap(
            children: <Widget>[
              RaisedButton(
                child: Text('showBottomSheet'),
                onPressed: () {
                  showBottomSheet(
                    context: context,
                    builder: (context) => BottomSheet(
                      onClosing: () {},
                      builder: (context) => Container(
                        height: 200.0,
                        color: Colors.blue,
                        child: Center(
                          child: RaisedButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: Text('dismissBottomSheet'),
                          ),
                        ),
                      ),
                    )
                  );
                },
              ),
              RaisedButton(
                child: Text('showModalBottomSheet'),
                onPressed: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (context) => BottomSheet(
                      onClosing: () {},
                      builder: (context) => Container(
                        height: 200.0,
                        color: Colors.blue,
                        child: Center(
                          child: RaisedButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: Text('dismissBottomSheet'),
                          ),
                        ),
                      ),
                    )    
                  );
                },                
              )
            ],
          );
        },
      ),
      // Scaffold参数, 当Scaffold创建时就会显示BottomSheet
      // bottomSheet: BottomSheet(
      //   onClosing: () {},
      //   builder: (context) => Container(
      //     height: 200.0,
      //     color: Colors.blue,
      //     child: Center(
      //       child: RaisedButton(
      //         onPressed: () {
      //           Navigator.of(context).pop();
      //         },
      //         child: Text('dismissBottomSheet'),
      //       ),
      //     ),
      //   ),
      // )
    );
  }
}