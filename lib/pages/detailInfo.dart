import 'package:flutter/material.dart';

class DetailInfoPage extends StatefulWidget {
  Map arguments;
  DetailInfoPage({Key key, this.arguments}) : super(key: key);

  @override
  _DetailInfoPageState createState() => _DetailInfoPageState(arguments: this.arguments);
}

class _DetailInfoPageState extends State<DetailInfoPage> {
  Map arguments;
  _DetailInfoPageState({this.arguments});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.arguments['title'])
      ),
      body: Text('命名路由传值${this.arguments['title']}')
    );
  }
}