/** 网格布局 builder */
import 'package:flutter/material.dart';
import '../../res/listData.dart';
import '../detail.dart';


class HomePage extends StatelessWidget {
  Widget _getData(content, index){
    return InkWell(
      onTap:() {
        Navigator.of(content).push(
          MaterialPageRoute(builder: ((content)=>DetailPage(title: listData[index]['title'])))
        );
      },
      child: Container(
      child: Column(children: <Widget>[
        Image.network(listData[index]['imageUrl']),
        Text(listData[index]['title'])
      ]),
    )
    );
  }
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3
      ),
      itemCount: listData.length,
      itemBuilder: this._getData
      );
  }

}
