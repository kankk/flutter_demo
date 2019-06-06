import 'package:flutter/material.dart';

class TextFieldPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    // final TextEditingController _inpuController = TextEditingController();

    return Scaffold(
      appBar: AppBar(title: Text('输入框和表单')),
      body: Wrap(
        children: <Widget>[
          // TextField(
          //   // 使用onChanged监听输入内容
          //   onChanged: (String data) {
          //     print(data);
          //   },
          // ),
          // TextField(
          //   // 使用controller监听输入内容
          //   controller: _inpuController,
          //   onChanged: (String data) {
          //     print(_inpuController.text);
          //   },
          // ),
          FormWidget()
        ],
      )
    );
  }
}

class FormWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return FormWidgetState();
  }
}

class FormWidgetState extends State<FormWidget> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  var _userGender = '男';
  var _userName;
  var _userPassword;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          DropdownButtonFormField<String>(
            value: _userGender,
            items: ['男', '女'].map((label) => DropdownMenuItem(
              child: Text(label),
              value: label
            )).toList(),
            onChanged: (value) {
              setState(() {
                _userGender = value;
              });
            },
            onSaved: (value) {
              _userGender = value;
            },
          ),
          TextFormField(
            decoration: InputDecoration(hintText: '用户名'),
            validator: (value) {
              if (value?.length <= 5) {
                return '用户名必须大于5个字符';
              }
            },
            onSaved: (value) {
              _userName = value;
            },
          ),
          TextFormField(
            decoration: InputDecoration(hintText: '密码'),
            obscureText: true,
            validator: (value) {
              if (value?.length <= 8) {
                return '密码必须大于8个字符';
              }
            },
            onSaved: (value) {
              _userPassword = value;
            },
          ),
          RaisedButton(
            child: Text('注册'),
            onPressed: () {
              if (_formKey.currentState.validate()) {
                _formKey.currentState.save();
                print(_userGender);
                print(_userName);
                print(_userPassword);
              }
            },
          )
        ],
      ),
    );
  }
}