import 'package:flutter/material.dart';
import 'package:market_manager/widgets/Menu.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const appTitle = 'Market Manager';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: appTitle,
      home: Menu(title: appTitle),
    );
  }
}