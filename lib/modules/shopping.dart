import 'package:flutter/material.dart';

class ShoppingModule extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => ShoppingModuleState();
}

class ShoppingModuleState extends State<ShoppingModule> with SingleTickerProviderStateMixin {
  late TabController _tabController;
 /* static const List<Tab> sections;*/

  /*sections = <Tab>[
  const Tab(icon: Icon(Icons.ac_unit_rounded)),
  const Tab(icon: Icon(Icons.apple)),
  const Tab(icon: Icon(Icons.all_inclusive)),
  const Tab(icon: Icon(Icons.vaccines_sharp)),
  const Tab(icon: Icon(Icons.)),
  const Tab(icon: Icon(Icons.vaccines_sharp)),
  ];*/

  @override
  void initState() {
    _tabController = TabController(length: 10, vsync: this);

    super.initState();
  }



  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 10,
      child: Scaffold(
        appBar: AppBar(title: const Text("Compras")),
        body: SafeArea(
          child: ListView(
            children: _buildShoppingListBody(),
          ),
        ),
        floatingActionButton:NewListButton(tabController: _tabController) ,
      ),
    );
  }

  List<Widget> _buildShoppingListBody() {
    List<String> _listasCreadas = ["Dato", "Dato", "Dato"];
    List <Widget> lista = [];

    _listasCreadas.forEach((element) {
      Widget newWidget = ShoppingList();
      lista.add(newWidget);
    });

    return lista;
    /*if (_listasCreadas.isNotEmpty) {
      _buildEmptyShoppingListBody();
    } else {
        _listasCreadas.forEach((element) {ShoppingList();});
    }
    return Container();*/
}

  Widget _buildEmptyShoppingListBody() {
    return const Center(
      child: Text(
        "No hay listas creadas"
      ),
    );
  }
}

  class ShoppingList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: const [
          Icon(Icons.shopping_cart),
          Text("Lista 1")
        ],
      ),
    );
  }
}



class NewListButton extends StatelessWidget {
  final TabController tabController;

  const NewListButton({super.key, required this.tabController});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
        elevation: 20.0,
        splashColor: Colors.indigo,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.0)),
        child: Icon(Icons.add, color: Colors.white),
        onPressed: () => {});
  }

}

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
