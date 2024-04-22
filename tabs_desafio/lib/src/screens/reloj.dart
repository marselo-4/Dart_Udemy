import 'package:flutter/material.dart';

class Reloj extends StatelessWidget {
 @override
 Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(
            Icons.access_time_filled,
            size: 170.0,
          ),
          Text('Reloj')
        ],
      ),
      ),
    );
 }
}