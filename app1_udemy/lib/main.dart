import 'package:flutter/material.dart';

void main() {
  var app = MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: Text("Mi primera aplicación")),
      body: Container(
        child: Center(
          child: Text("Esta es mi app"),
        ),
      ),
    ),
  );

  runApp(app);
}
