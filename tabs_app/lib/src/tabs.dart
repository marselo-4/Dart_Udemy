import 'package:flutter/material.dart';
import 'package:tabs_app/src/screens/contact.dart';
import 'package:tabs_app/src/screens/home.dart';
import 'package:tabs_app/src/screens/video.dart';

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
        title: Text('Video Tabs'),
        bottom: TabBar(
          tabs: <Widget>[
            Tab(
              icon: Icon(Icons.home),
            ),
            Tab(
              icon: Icon(Icons.ondemand_video),
            ),
            Tab(
              icon: Icon(Icons.contacts),
            ),
          ],
        ),
      ),
      
      body: TabBarView(
        children: <Widget>[
          Home(),
          Video(),
          Contact()
        ],
      ),
   ));
  }
}