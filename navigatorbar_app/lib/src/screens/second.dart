import 'package:flutter/material.dart';



class Second extends StatelessWidget {
  final String title;
  Second({required this.title});

 @override
 Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: Text(title),
    ),
    body: Center(
      child: ElevatedButton(
        child: Text('Regresar'),
        onPressed: () {
          Navigator.pop(context);
        },
    ),
 ),
 );
 }
}