import 'package:flutter/material.dart';

class Alarma extends StatelessWidget {
 @override
 Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(
            Icons.access_alarm,
            size: 170.0,
          ),
          Text('Alarma')
        ],
      ),
      ),
    );
 }
}