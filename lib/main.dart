import 'package:flutter/material.dart';
import 'res/listData.dart';
import 'pages/tabs.dart';
import './routers.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Tabs(),
      theme: ThemeData(
        primarySwatch: Colors.yellow
      ),
      onGenerateRoute: onGenerateRoute,
      initialRoute: '/',
    );
  }
}

class MyImage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(child: Container(
      child: Image.network("https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=858329114,1036550300&fm=26&gp=0.jpg",
      alignment: Alignment.topLeft,
      fit: BoxFit.fill),
      width: 300,
      height: 300,
      decoration: BoxDecoration(
        color: Colors.blue
      )
    )
    );
  }
  
}


/** 垂直 */
class HomeContent2 extends StatelessWidget{
  List<Widget> _getDate() {
    List<Widget> list = new List();
    for(int i = 0; i< 20; i++){
      list.add(
        Container(
          width: 60,
          height: 60,
          color: Colors.black,
          child: Text('标题$i', style: TextStyle(
            color: Colors.yellow
          )),
        )
      );
    }
    return list;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: ListView(
      scrollDirection: Axis.horizontal,
      children: this._getDate()
    )
    );
  }
}



/** 网格布局 count */
class  HomeContent4 extends StatelessWidget{
  List<Widget> _getData() {
    var list = listData.map((value){
      return Container(
        child: Column(children: <Widget>[
          Image.network(value['imageUrl']),
          Text(value['title'])
        ]),
        decoration: BoxDecoration(
          border: Border.all(
            width: 1,
            color: Colors.black
          ),
          borderRadius: BorderRadius.circular(10)
        )
      );
    });
    return list.toList();
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      mainAxisSpacing: 10.0,
      crossAxisSpacing: 10.0,
      children: this._getData(),
    );
  }
}



