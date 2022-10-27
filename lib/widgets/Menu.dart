import 'package:flutter/material.dart';
import 'package:market_manager/utils/Assets.dart';

import '../modules/Compras.dart';

class DrawerWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
                color: Colors.blue,
                image: DecorationImage(
                    image: AssetImage(Assets.MARKET_MENU_BACKGROUND),
                    fit: BoxFit.fill)),
            child: Text(''),
          ),
          ListTile(
            leading: Icon(Icons.account_box),
            title: const Text('Perfil'),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.account_balance_wallet_outlined),
            title: const Text('Contabilidad'),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.add_shopping_cart),
            title: const Text('Compras'),
            onTap: () {
              Compras();
            },
          ),
          ListTile(
            leading: Icon(Icons.notes),
            title: const Text('Notas'),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: const Text('Configuracion'),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}

