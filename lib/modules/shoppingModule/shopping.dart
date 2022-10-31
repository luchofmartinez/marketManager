import 'package:flutter/material.dart';
import 'package:market_manager/modules/shoppingModule/bloc/builders/body.dart';
import 'package:market_manager/modules/shoppingModule/bloc/builders/buttons.dart';
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
        appBar: _buildAppBar(),
        body: SafeArea(
          child: BlocProvider<ShoppingCubit>(
            create: (context) => _shoppingCubit,
            child: _buildBodyModule(),
          ),
        ),
        floatingActionButton: _buildFloatingActionButton(),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar() {
    return AppBar(title: const Text("Compras"));
  }

  Widget _buildBodyModule() {
    return BlocBuilder(bloc: _shoppingCubit, builder: ShoppingBodyBuilder().builder());
  }

  Widget _buildFloatingActionButton() {
    return BlocBuilder(bloc: _shoppingCubit, builder: ShoppingButtonsBuilder().builder());
  }
}


