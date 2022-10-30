

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:market_manager/modules/shoppingModule/bloc/states.dart';
import 'package:market_manager/modules/shoppingModule/emptyShoppingList.dart';
import 'package:market_manager/utils/bloc.dart';


class ShoppingBodyBuilder extends WidgetBuilderFactory<ShoppingState> {

  @override
  Widget translate(ShoppingState state) {
      if (state is EmptyShoppingListState) {
        return EmptyShoppingList();
      }
      return Container();
  }
}
