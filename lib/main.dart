import 'package:flutter/material.dart';
import 'package:flutter_demo/page/TextPage.dart';
import 'package:flutter_demo/page/ImagePage.dart';
import 'package:flutter_demo/page/TextFieldPage.dart';
import 'package:flutter_demo/page/SnackBarPage.dart';
import 'package:flutter_demo/page/DialogPage.dart';
import 'package:flutter_demo/page/BottomSheetPage.dart';
import 'package:flutter_demo/page/MenuPage.dart';
import 'package:flutter_demo/page/GestureDetectorPage.dart';
import 'package:flutter_demo/page/FlexPage.dart';
import 'package:flutter_demo/page/LinearPage.dart';
import 'package:flutter_demo/page/WrapPage.dart';
import 'package:flutter_demo/page/StackPage.dart';
import 'package:flutter_demo/page/ContainersPage.dart';
import 'package:flutter_demo/page/SingleChildScrollViewWidget.dart';
import 'package:flutter_demo/page/ListViewPage.dart';
import 'package:flutter_demo/page/CustomScrollViewWidget.dart';
import 'package:flutter_demo/page/GridViewPage.dart';
import 'package:flutter_demo/page/PageViewPage.dart';
import 'package:flutter_demo/page/MethodChannelPage.dart';
import 'package:flutter_demo/page/EventChannelPage.dart';
import 'package:flutter_demo/page/BlocPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Widget Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Widget Demo'),
      routes: {
        '/Page0': (context) => TextPage(),
        '/Page1': (context) => ImagePage(),
        '/Page2': (context) => TextFieldPage(),
        '/Page3': (context) => SnackBarPage(),
        '/Page4': (context) => DialogPage(),
        '/Page5': (context) => BottomSheetPage(),
        '/Page6': (context) => MenuPage(),
        '/Page7': (context) => GestureDetectorPage(),
        '/Page8': (context) => FlexPage(),
        '/Page9': (context) => LinearPage(),
        '/Page10': (context) => WrapPage(),
        '/Page11': (context) => StackPage(),
        '/Page12': (context) => ContainersPage(),
        '/Page13': (context) => SingleChildScrollViewWidget(),
        '/Page14': (context) => ListViewPage(),
        '/Page15': (context) => CustomScrollViewWidget(),
        '/Page16': (context) => GridViewPage(),
        '/Page17': (context) => PageViewPage(),
        '/Page18': (context) => MethodChannelPage(),
        '/Page19': (context) => EventChannelPage(),
        '/Page20': (context) => BlocPage()
      }
    );
  }

}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> widgets = [
    '第14节 -- 文本框',
    '第15节 -- 图片和Icon',
    '第16节 -- 输入框和表单',
    '第17节 -- SnackBar',
    '第18节 -- 对话框',
    '第19节 -- BottomSheet',
    '第20节 -- 菜单栏',
    '第21节 -- 手势识别Widget',
    '第24节 -- 弹性布局',
    '第25节 -- 线性布局',
    '第26节 -- 流式布局',
    '第27节 -- 层叠布局',
    '第28节 -- 容器类Widget',
    '第30节 -- SingleChildScrollView',
    '第31节 -- ListView',
    '第32节 -- CustomScrollView',
    '第33节 -- GridView',
    '第34节 -- PageView',
    '第45节 -- PlatformChannel -- MethodChannel',
    '第45节 -- PlatformChannel -- EventChannel',
    '第52节 -- BLoC Demo',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView.separated(
        itemCount: widgets.length,
        itemBuilder: (context, index) {
          print(context);
          return GestureDetector(
            child: ListTile(title: Text(widgets[index])),
            onTap: () {
              Navigator.pushNamed(context, '/Page' + index.toString());
            },
          );
        },
        separatorBuilder: (context, index) {
          return Divider();
        }
      )
    );
  }
}