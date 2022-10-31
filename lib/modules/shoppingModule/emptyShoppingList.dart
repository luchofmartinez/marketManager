

import 'package:flutter/cupertino.dart';

class EmptyShoppingList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
          "No hay listas creadas",
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0),
      ),
    );
  }
}