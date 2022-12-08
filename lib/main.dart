import 'package:flutter/material.dart';
import 'package:market_manager/modules/home.dart';
import 'package:market_manager/modules/settings.dart';
import 'constants/routes.dart';
import 'modules/profileModule/profile.dart';
import 'modules/shoppingModule/shopping.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {

  final String appTitle = 'Market Manager';

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: appTitle,
      home: HomeModule(),
      routes: _getApplicationRoutes(), 
    );
  }

  Map<String, WidgetBuilder> _getApplicationRoutes() {
    return {
      Routes.PROFILE: (context) => ProfileModule(),
      Routes.SHOPPING: (context) => ShoppingModule(),
      Routes.SETTINGS: (context) => SettingsModule(),
    };
  }
}