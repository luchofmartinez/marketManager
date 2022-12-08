import 'package:flutter/material.dart';
import 'package:market_manager/constants/routes.dart';
import 'package:market_manager/utils/Assets.dart';
import 'package:market_manager/widgets/menu.dart';
 
class HomeModule extends StatelessWidget {

  String appTitle = 'Market Manager';

  HomeModule({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerWidget(),
      appBar: AppBar(title: Text(appTitle)),
      body: const HomeBodyWidget(),
    );
  }
}

class HomeBodyWidget extends StatelessWidget {
  const HomeBodyWidget({super.key});


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(Assets.MARKET_SPLASHSCREEN),
          fit: BoxFit.fitWidth
        ) 
      ),
      padding: const EdgeInsets.all(10.0),

    );
  }
}

