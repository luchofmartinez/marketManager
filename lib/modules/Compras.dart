import 'package:flutter/material.dart';

class Compras extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => ComprasState();
}

class ComprasState extends State<Compras> with SingleTickerProviderStateMixin {
  late TabController _tabController;
 /* static const List<Tab> sections;

  sections = <Tab>[
  const Tab(icon: Icon(Icons.ac_unit_rounded)),
  const Tab(icon: Icon(Icons.apple)),
  const Tab(icon: Icon(Icons.all_inclusive)),
  const Tab(icon: Icon(Icons.vaccines_sharp)),
  const Tab(icon: Icon(Icons.vaccines_sharp)),
  const Tab(icon: Icon(Icons.vaccines_sharp)),
  ];*/

  @override
  void initState() {
    _tabController = TabController(length: 10, vsync: this);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 10,
      child: Scaffold(
        appBar: AppBar(title: const Text("Compras")),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                color: Colors.lightBlueAccent,
                child: TabBar(
                  controller: _tabController,
                  isScrollable: true,
                  tabs: List.generate( 10, (index) => ComprasTabsWidget()),
                ),
              ),
              Expanded(
                child: Container(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ComprasTabsWidget extends StatelessWidget {
  const ComprasTabsWidget({super.key});


  @override
  Widget build(BuildContext context) {
    return const Card(
      elevation: 6,
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Text(
          "Verduras",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }


}
