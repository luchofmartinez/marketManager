import 'MarketListItem.dart';

class MarketList {
  final double _total;
  final Map<MarketListItem, int> _items;

  MarketList(this._total, this._items);

  double get total => _total;
  Map<MarketListItem, int> get items => _items;
}
