import 'package:flutter/material.dart';
import 'package:market_manager/models/marketList.dart';
import 'package:intl/intl.dart';

class ShoppingList extends StatelessWidget {
  final List<MarketList> marketLists;

  const ShoppingList({required this.marketLists});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverFixedExtentList(
          itemExtent: 125,
          delegate: SliverChildBuilderDelegate(
            (context, index) =>
                ShoppingListItemWidget(marketList: marketLists[index]),
            childCount: marketLists.length,
          ),
        )
      ],
    );
  }
}

class ShoppingListItemWidget extends StatelessWidget {
  final MarketList marketList;

  const ShoppingListItemWidget({super.key, required this.marketList});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(7, 5, 7, 0),
      child: Card(
          elevation: 15.0,
          shadowColor: Colors.greenAccent,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          child:_buildListBody()),
    );
  }

  Widget _buildListBody() {
    return ListTile(
      leading: _buildListLogo(),
      contentPadding: const EdgeInsets.all(3.0),
      title: _buildListInformation(),
      onTap: () => {},
      onLongPress: () => {},
      /*subtitle:
          _buildListFooter(marketList.createdDate, marketList.updatedDate),*/
    );
  }

  Widget _buildListLogo() {
    return const CircleAvatar(
        child: Icon(Icons.shopping_cart_rounded, color: Colors.black),
        backgroundColor: Colors.green);
  }

  Widget _buildListInformation() {
    String created = DateFormat("dd-MM-yyyy").format(marketList.createdDate);
    String updated = DateFormat("dd-MM-yyyy").format(marketList.updatedDate);
    return Column(
      children: [
        Text(
          marketList.description.toString(),
          style: const TextStyle(fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
          overflow: TextOverflow.ellipsis,
        ),
        Text("Creado: " + created.toString(),
            style: const TextStyle(
                color: Colors.grey, fontStyle: FontStyle.italic)),
        Text("Actualizado: " + updated.toString(),
            style: const TextStyle(
                color: Colors.grey, fontStyle: FontStyle.italic)),
        Expanded(flex: 8, child: _buildStateChip()),
      ],
    );
  }

  Widget _buildStateChip() {
    String listState = marketList.translateState(marketList.state);
    return Align(
      alignment: Alignment.topRight,
      child: Padding(
        padding: EdgeInsets.all(4.0),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: marketList.translateStateColor(marketList.state)),
          child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Text(listState,
                  textAlign: TextAlign.center)),
        ),
      ),
    );
  }
}
