import 'package:flutter/material.dart';

class ShoppingListCart extends StatelessWidget {
  const ShoppingListCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
      ),
      floatingActionButton: _buildSaveButton(context),
    );
  }

  Widget _buildSaveButton(BuildContext context) {
    // TODO: INCORPORAR BASE DE DATOS LOCAL
    return FloatingActionButton(
        child: Icon(Icons.save),
        backgroundColor: Colors.green,
        onPressed: () => {});
  }
}

mixin ShoppingInformationCard implements StatefulWidget {
  @override
  State<ShoppingInformationCard> createState() =>
      _ShoppingInformationCardState();
}

class _ShoppingInformationCardState extends State<ShoppingInformationCard> {
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        elevation: 15.0,
        shadowColor: Colors.greenAccent,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        margin: const EdgeInsets.all(15.0),
        child: TextField(
          controller: _controller,
          textAlign: TextAlign.start,
          decoration:const InputDecoration(
              labelText: "Nombre de la lista", hintText: "Lista Nueva", contentPadding: EdgeInsets.all(15.0)),
        ),
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
      margin: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Container(child: Icon(Icons.apple), color: Colors.lightBlueAccent),
            const Text(
              "Verduras",
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
