import 'package:flutter/material.dart';

class Battery extends StatelessWidget {
  static const String routeName = "/bateria";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Batería"),),
      body: Container(
      child: Center(
        child: Text("Pantalla Batería"),
      ),
      ),
    );
  }
}