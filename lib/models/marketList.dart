import 'MarketListItem.dart';

class MarketList {
  final double _total;
  final Map<MarketListItem, int> _items;
  final DateTime _createdDate;
  final DateTime _updatedDate;

  MarketList(this._total, this._items, this._createdDate, this._updatedDate);

  double get total => _total;
  Map<MarketListItem, int> get items => _items;

  DateTime get createdDate => _createdDate;

  DateTime get updatedDate => _updatedDate;
}
