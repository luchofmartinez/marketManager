import 'package:equatable/equatable.dart';
import 'package:market_manager/models/marketList.dart';

abstract class ShoppingState extends Equatable {
  List<Object>get props => [];

}

class LoadingState extends ShoppingState {}

class EmptyShoppingListState extends ShoppingState {}

class AddShoppingListState extends ShoppingState{}

class EditShoppingListState {
  final MarketList marketList;

  EditShoppingListState(this.marketList);

  List<Object> get props => [marketList];
}

class DisplayShoppingListState extends ShoppingState{
  final List<MarketList> marketLists;
  final List<MarketList> displayedMarketLists;
  final Set<MarketList> selectedMarketLists;

  DisplayShoppingListState(
      this.marketLists, this.displayedMarketLists, this.selectedMarketLists);

  List<Object> get props => [marketLists,displayedMarketLists,selectedMarketLists];
}