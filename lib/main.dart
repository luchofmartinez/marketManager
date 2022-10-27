import 'package:flutter/material.dart';
import 'package:market_manager/modules/Home.dart';
import 'modules/Compras.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  String appTitle = 'Market Manager';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appTitle,
      home: HomeModule(),
    );
  }

  Map<String, WidgetBuilder> _getApplicationRoutes() {
    return {
      /*Routes.COMPRAS: (context) => Compras(),*/
    };
  }
}