import 'package:flutter/material.dart';
import '../../res/listData.dart';
/**列表 循环 */
class CategoryPage extends StatelessWidget{
  Widget _getData(content, index) {
    return InkWell(
      onTap:() {
        Navigator.pushNamed(content, '/detailInfo', arguments: {
          'title': listData[index]['title']
        });
      },
      child: ListTile(
      title: Text(listData[index]['title']),
      subtitle:Text(listData[index]['author']),
      leading: Image.network(listData[index]['imageUrl']),
    )
    );
  }
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: listData.length,
      itemBuilder: this._getData
      );
  }

}