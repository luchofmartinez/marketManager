import 'package:flutter/material.dart';
import 'package:market_manager/constants/routes.dart';
import 'package:market_manager/utils/Assets.dart';


class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});


  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(
                color: Colors.blue,
                image: DecorationImage(
                    image: AssetImage(Assets.MARKET_SPLASHSCREEN),
                    fit: BoxFit.fill)),
            child: Container(),
          ),
          const ItemMenu(icon: Icons.account_box, textItem: 'Perfil', ruta: Routes.PROFILE),
          const ItemMenu(icon: Icons.account_balance_wallet_outlined, textItem: 'Contabilidad', ruta: Routes.PROFILE),
          const ItemMenu(icon: Icons.add_shopping_cart, textItem: 'Compras', ruta: Routes.SHOPPING),
          const ItemMenu(icon: Icons.notes, textItem: 'Notas', ruta: Routes.PROFILE),
          const ItemMenu(icon: Icons.settings, textItem: 'Configuración', ruta: Routes.SETTINGS),
        ],
      ),
    );
  }
}

class ItemMenu extends StatelessWidget {

  final IconData icon;
  final String textItem;
  final String ruta;
  
  const ItemMenu({
    Key? key, 
    required this.icon, 
    required this.textItem, 
    required this.ruta,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon),
      title: Text(textItem),
      onTap: () {
        Navigator.pushNamed(context, ruta);
      },
    );
  }
}

