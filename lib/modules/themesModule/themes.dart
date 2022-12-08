import 'package:flutter/material.dart';

class ThemesPage extends StatefulWidget {
  const ThemesPage({Key? key}) : super(key: key);

  @override
  State<ThemesPage> createState() => _ThemesPageState();
}

class _ThemesPageState extends State<ThemesPage> {
  String? darkmode;
  late String selectedRadioTile;

  late int selectedRadio;

  @override
  void initState() {
    super.initState();
    selectedRadio = 0;
    selectedRadioTile = "";
  }

  setSelectedRadioTile(String val) {
    setState(() {
      selectedRadioTile = val;
    });
  }

  setTheme(String theme){
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Themes"),
        ),
        body: Column(
          children: [
            RadioListTile(
              title: const Text("Claro"),
              value: "light",
              groupValue: darkmode,
              onChanged: (value) {
                setState(() {
                  darkmode = value.toString();
                  setSelectedRadioTile(value!);
                  print(darkmode);
                });
              },
            ),
            RadioListTile(
              title: const Text("Oscuro"),
              value: "dark",
              groupValue: darkmode,
              onChanged: (value) {
                setState(() {
                  darkmode = value.toString();
                  setSelectedRadioTile(value!);
                  print(darkmode);
                });
              },
            ),
            RadioListTile(
              title: const Text("Por defecto del sistema"),
              value: "default",
              groupValue: darkmode,
              onChanged: (value) {
                setState(() {
                  darkmode = value.toString();
                  setSelectedRadioTile(value!);
                  print(darkmode);
                });
              },
            ),
          ],
        ));
  }
}
