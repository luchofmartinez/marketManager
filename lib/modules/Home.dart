import 'package:flutter/material.dart';
import '../widgets/Menu.dart';

class HomeModule extends StatelessWidget {

  String appTitle = 'Market Manager';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerWidget(),
      appBar: AppBar(title: Text(appTitle)),
      body: HomeBodyWidget(),
    );
  }
}

class HomeBodyWidget extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Container();
  }

}

