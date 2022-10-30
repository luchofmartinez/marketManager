
import 'dart:collection';

import 'package:market_manager/models/MarketListItem.dart';
import 'package:market_manager/models/marketList.dart';
import 'package:market_manager/modules/shoppingModule/bloc/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ShoppingCubit extends Cubit<ShoppingState> {
  ShoppingCubit() : super(LoadingState());

void fetchShoppingList() {
  MarketListItem item1 = new MarketListItem("Costeleta","Costeleta por unidad", 5.0, "assets/images/imagenMenu.png");
  List<MarketList> userMarketList = [];

  if (userMarketList.isEmpty) {
    emit(EmptyShoppingListState());
  } else {
    var displayedMarketLists = List<MarketList>.of(userMarketList);
    var selectedMarketLists = HashSet<MarketList>();
    emit(DisplayShoppingListState(userMarketList,displayedMarketLists,selectedMarketLists));
  }
}

}