import 'package:flutter/material.dart';

import 'MarketListItem.dart';

class MarketList {
  final int _uuid;
  final String _description;
  final double _total;
  final Map<MarketListItem, int> _items;
  final DateTime _createdDate;
  final DateTime _updatedDate;
  final MarketListState _state;

  MarketList(this._uuid, this._description, this._total, this._items, this._createdDate, this._updatedDate, this._state);

  double get total => _total;
  Map<MarketListItem, int> get items => _items;

  DateTime get createdDate => _createdDate;

  DateTime get updatedDate => _updatedDate;

  int get uuid => _uuid;

  String get description => _description;

  MarketListState get state => _state;

  String translateState(MarketListState state){
    switch (state) {
      case MarketListState.DRAFT:
        return "BORRADOR";
      case MarketListState.COMPLETED:
        return "COMPRA FINALIZADA";
      case MarketListState.INCOMPLETE:
        return "COMPRA INCOMPLETA";
      default:
        return "";
    }
  }

  Color translateStateColor(MarketListState state) {
    switch (state) {
      case MarketListState.DRAFT:
        return Colors.grey;
      case MarketListState.COMPLETED:
        return Colors.green;
      case MarketListState.INCOMPLETE:
        return Colors.orangeAccent;
      default:
        return Colors.white;
    }
  }
}

enum MarketListState {DRAFT, COMPLETED, INCOMPLETE}
