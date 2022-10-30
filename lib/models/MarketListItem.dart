
import 'dart:ui';

class MarketListItem{
  final String _name;
  final String _description;
  final double _price;
  final String _image;

  MarketListItem(this._name, this._description, this._price, this._image);

  String get name => _name;

  String get description => _description;

  double get price => _price;

  String get image => _image;
}