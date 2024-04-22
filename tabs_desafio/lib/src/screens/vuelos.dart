import 'package:flutter/material.dart';

class Vuelos extends StatelessWidget {
 @override
 Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(
            Icons.airplanemode_active,
            size: 170.0,
          ),
          Text('Vuelos')
        ],
      ),
      ),
    );
 }
}