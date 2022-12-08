


import 'package:flutter/material.dart';
import 'package:market_manager/modules/shoppingModule/bloc/states.dart';
import 'package:market_manager/modules/shoppingModule/buttons.dart';
import 'package:market_manager/utils/bloc.dart';

class ShoppingButtonsBuilder extends WidgetBuilderFactory<ShoppingState> {
  @override
  Widget translate(ShoppingState state) {
    if (state is DisplayShoppingListState) {
      var selectedList = state.selectedMarketLists;
      if (selectedList.isEmpty) {
        return ShoppingListActionButton.noSelect();
      }
        return ShoppingListActionButton.Select();
    }

    if (state is EmptyShoppingListState) {
      return ShoppingListActionButton.noSelect();
    }

    return SizedBox.shrink();
  }
}