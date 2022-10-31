
import 'package:flutter/material.dart';

class ShoppingListWidget extends StatelessWidget {
  final TabController tabController;

  const ShoppingListWidget({super.key, required this.tabController});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            child: TabBar(
              controller: tabController,
              isScrollable: true,
              tabs: List.generate( 10, (index) => ComprasTabsWidget()),
            ),
          ),
          Expanded(
            child: Container(),
          ),
        ],
      ),
    );
  }
}

class ComprasTabsWidget extends StatelessWidget {
  const ComprasTabsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
      margin: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Row(
          children: [
            Container(child:Icon(Icons.apple), color: Colors.lightBlueAccent),
            const Text(
              "Verduras",
              style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
