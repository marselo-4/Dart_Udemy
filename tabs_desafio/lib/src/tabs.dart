import 'package:flutter/material.dart';
import 'package:tabs_desafio/src/screens/reloj.dart';
import 'package:tabs_desafio/src/screens/vuelos.dart';
import 'package:tabs_desafio/src/screens/alarma.dart';

class MyTabs extends StatefulWidget {
  @override
  _MyTabsState createState() => new _MyTabsState();
 }
class _MyTabsState extends State<MyTabs> {
  @override
  Widget build(BuildContext context) {
   return DefaultTabController(
    length: 3,
    child: Scaffold(
      appBar: AppBar(
        title: Text('Desafio Tabs'),
      ),
      body: 
      TabBarView(
        children: <Widget>[Alarma(), Reloj(), Vuelos()],
      ), 
      bottomNavigationBar: 
      Material(
        color: Colors.blue,
        child: TabBar(
          tabs: <Tab>[
            Tab(icon: Icon(Icons.alarm)),
            Tab(icon: Icon(Icons.watch_later)),
            Tab(icon: Icon(Icons.airplanemode_active)),
          ],
        ),
      ),
   ));
  }
}