
import 'package:flutter/material.dart';

class ShoppingListCart extends StatelessWidget {

  const ShoppingListCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        ShoppingInformationCard()
        /*Container(
            child: TabBar(
              controller: tabController,
              isScrollable: true,
              tabs: List.generate( 10, (index) => ComprasTabsWidget()),
            ),
          ),*/
      ],
    );
  }
}

class ShoppingInformationCard extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(

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
