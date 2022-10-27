import 'package:flutter/material.dart';
import 'package:market_manager/modules/home.dart';
import 'constants/routes.dart';
import 'modules/shopping.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  String appTitle = 'Market Manager';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appTitle,
      home: HomeModule(),
      initialRoute: Routes.HOME,
      routes: _getApplicationRoutes() ,
    );
  }

  Map<String, WidgetBuilder> _getApplicationRoutes() {
    return {
      Routes.SHOPPING : (context) => ShoppingModule(),
    };
  }
}