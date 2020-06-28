import 'package:flutter/material.dart';
import 'tabs/category.dart';
import 'tabs/home.dart';
import 'tabs/setting.dart';
class Tabs extends StatefulWidget {
  Tabs({Key key}) : super(key: key);

  @override
  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  int currentyIndex = 0;
  List pageList = [
    HomePage(),
    CategoryPage(),
    SettingPage()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('page1')
        ),
        body: this.pageList[this.currentyIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: this.currentyIndex,
          onTap: (int index){
            setState(() {
              this.currentyIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('首页')
            ),
            BottomNavigationBarItem(icon: Icon(Icons.category), title: Text('分类')),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              title: Text('设置')
            )
          ]
          ),
      );
  }
}