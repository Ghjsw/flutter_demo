import 'package:flutter/material.dart';
import 'pages/detailInfo.dart';
import 'pages/tabs.dart';

final routes = {
  '/': (context)=> Tabs(),
  '/detailInfo':(context, {arguments})=>DetailInfoPage(arguments:arguments)
};
var onGenerateRoute = (RouteSettings settings) {
  //路由名字
  final String name = settings.name;
  final Function pageContentBuilder = routes[name];
  if(pageContentBuilder != null) {
    if (settings.arguments != null) {
      final Route route = MaterialPageRoute(
        builder: (context) => pageContentBuilder(context, arguments: settings.arguments)
        );
        return route;
    } else {
      final Route route = MaterialPageRoute(
        builder: (context)=> pageContentBuilder(context)
      );
      return route;
    }
  }
};