import 'package:flutter/material.dart';
/** 新增数据 */
class SettingPage extends StatefulWidget {
  SettingPage({Key key}) : super(key: key);

  @override
  _SettingPageState createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  List list = new List();
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Column(children: this.list.map((value){
          return Text(value, style: TextStyle(
            fontSize: 26,
            height: 4
          ));
        }).toList()
        ),
        RaisedButton(
          child: Text('ADD'),
          onPressed: () {
            setState(() {
              this.list.add('This is a new item');
            });
          }
        )
      ],
    );
  }
}