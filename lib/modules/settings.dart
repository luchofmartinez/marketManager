import 'package:flutter/material.dart';
import 'package:market_manager/constants/routes.dart';

class SettingsModule extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Configuración'),
      ),
      body: ListView(
          children: [
            ListTile(leading: Icon(Icons.color_lens),
              title: const Text('Temas'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pushNamed(context, Routes.THEMES);
              },
            ),
            ListTile(leading: Icon(Icons.translate),
              title: const Text('Idioma'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pushNamed(context, Routes.LANGUAGES);
              },
            ),
            ListTile(leading: Icon(Icons.notifications),
              title: const Text('Notificaciones'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pushNamed(context, Routes.NOTIFICATIONS);
              },
            )
          ],
        ),
    );
  }
}