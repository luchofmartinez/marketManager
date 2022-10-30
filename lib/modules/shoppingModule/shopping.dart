import 'package:flutter/material.dart';
import 'package:market_manager/modules/shoppingModule/bloc/builders/body.dart';
import 'package:market_manager/modules/shoppingModule/bloc/cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class ShoppingModule extends StatefulWidget {
  @override
  _ShoppingModuleState createState() => _ShoppingModuleState();
}

class _ShoppingModuleState extends State<ShoppingModule> {
  final ShoppingCubit _shoppingCubit = ShoppingCubit();

  @override
  void didChangeDependencies() {
    _shoppingCubit.fetchShoppingList();
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 10,
      child: Scaffold(
        appBar: AppBar(title: const Text("Compras")),
        body: SafeArea(
          child: BlocProvider<ShoppingCubit>(
            create: (context) => _shoppingCubit,
            child: _buildBodyModule(),
          ),
        ),
        floatingActionButton: NewListButton(),
      ),
    );
  }

  Widget _buildBodyModule() {
    return BlocBuilder(bloc: _shoppingCubit, builder: ShoppingBodyBuilder().builder());
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

  const NewListButton({super.key});

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
