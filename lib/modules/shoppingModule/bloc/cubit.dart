
import 'dart:collection';

import 'package:market_manager/models/MarketListItem.dart';
import 'package:market_manager/models/marketList.dart';
import 'package:market_manager/modules/shoppingModule/bloc/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ShoppingCubit extends Cubit<ShoppingState> {
  ShoppingCubit() : super(LoadingState());

void fetchShoppingList() {
  List<MarketList> userMarketList = [];
  MarketListItem item1 = new MarketListItem("Costeleta","Costeleta por unidad", 5.0, "assets/images/imagenMenu.png");
  MarketListItem item2 = new MarketListItem("Pure de tomate","Pure de tomate de 350g", 6.0, "assets/images/imagenMenu.png");
  Map<MarketListItem, int> _items = {item1 : 5, item2 : 3};
  MarketList marketList1 = MarketList(20.0,_items, DateTime(2022,10, 30), DateTime(2022,10, 30));
  MarketList marketList2 = MarketList(20.0,_items, DateTime(2022,10, 30), DateTime(2022,10, 30));
  userMarketList.add(marketList1);
  userMarketList.add(marketList2);

  if (userMarketList.isEmpty) {
    emit(EmptyShoppingListState());
  } else {
    var displayedMarketLists = List<MarketList>.of(userMarketList);
    var selectedMarketLists = HashSet<MarketList>();
    emit(DisplayShoppingListState(userMarketList,displayedMarketLists,selectedMarketLists));
  }
}

void addShoppingList() {
  emit(AddShoppingListState());
}

}