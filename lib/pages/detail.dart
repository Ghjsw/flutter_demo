import 'package:flutter/material.dart';
class DetailPage extends StatelessWidget {
  String title;
  DetailPage({this.title = 'default'});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Text('返回'),
        onPressed: (){
        Navigator.of(context).pop();
      },),
      appBar: AppBar(
        title: Text(this.title)
      ),
      body: Text('${this.title}详情页面')
    );
  }
}