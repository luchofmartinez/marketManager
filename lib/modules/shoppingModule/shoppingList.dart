
import 'package:flutter/material.dart';
import 'package:market_manager/models/marketList.dart';

class ShoppingList extends StatelessWidget {
  final List<MarketList> marketLists;

  const ShoppingList({required this.marketLists});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverFixedExtentList(
          itemExtent: 110,
          delegate: SliverChildBuilderDelegate(
            (context, index) => Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: ShoppingListItemWidget(marketList: marketLists[index]),
            ),
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
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30), color: Colors.lightBlue),
      child: Card(
        elevation: 10.0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        margin: EdgeInsets.all(5),
        child: Expanded(
          flex: 10,
          child: Column(
            children: [
              const SizedBox(height: 15),
              _buildListHeader(),
              const SizedBox(height: 5),
              _buildListBody(),
              const SizedBox(height: 5),
              _buildListFooter(marketList.createdDate, marketList.updatedDate),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildListHeader() {
    return const ClipOval(
      child: Icon(Icons.shopping_cart_rounded),
    );
  }

  Widget _buildListBody() {
    return const Text("Lista 1",
        style: TextStyle(fontWeight: FontWeight.bold),
        overflow: TextOverflow.clip);
  }

  Widget _buildListFooter(DateTime createdDate, DateTime updatedDate) {
    String created = DateUtils.dateOnly(createdDate).toString();
    String updated = DateUtils.dateOnly(updatedDate).toString();
    return Expanded(
      flex: 20,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(created.toString(), style: const TextStyle(color: Colors.grey, fontStyle: FontStyle.italic)),
          Text(updated.toString(), style: const TextStyle(color: Colors.grey, fontStyle: FontStyle.italic))
        ],
      ),
    );
  }
}
