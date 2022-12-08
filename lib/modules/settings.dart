import 'package:flutter/material.dart';
import 'package:market_manager/constants/routes.dart';
import 'package:market_manager/modules/themesModule/themes.dart';

class SettingsModule extends StatelessWidget {
  
  const SettingsModule({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Configuración'),
      ),
      body: ListView(
        children: const [
          ItemsConfiguracion(icon: Icons.color_lens, texto: 'Temas', ruta: Routes.LANGUAGES),
          ItemsConfiguracion(icon: Icons.translate, texto: 'Idioma', ruta: Routes.LANGUAGES),
          ItemsConfiguracion(icon: Icons.notifications, texto: 'Notificaciones', ruta: Routes.NOTIFICATIONS),
        ],
      )
    );
  }
}

class ItemsConfiguracion extends StatelessWidget {
  final IconData icon;
  final String texto;
  final String ruta;
  
  const ItemsConfiguracion({
    Key? key, 
    required this.icon, 
    required this.texto, 
    required this.ruta,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon),
      title: Text(texto), 
      onTap: () {
        Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const ThemesPage(),
                  fullscreenDialog: false,
                  ),
            );
      },
    );
  } 
} 