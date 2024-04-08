import 'package:flutter/material.dart';
import 'package:stateless_app/src/screens/card.dart';

class MyApp extends StatelessWidget {
  final double iconSize = 40.0;
  final TextStyle textStyle = TextStyle(color: Colors.grey, fontSize: 30.0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stateless Widget"),
      ),
      body: Container(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          MyCard(
              title: Text("Me encanta Flutter", style: textStyle),
              icon: Icon(
                Icons.favorite_rounded,
                color: Colors.red,
                size: iconSize,
              )),
          MyCard(
              title: Text("Me gusta", style: textStyle),
              icon: Icon(
                Icons.thumb_up_rounded,
                color: Colors.blue,
                size: iconSize,
              )),
          MyCard(
              title: Text("Siguente Video", style: textStyle),
              icon: Icon(
                Icons.queue_play_next_rounded,
                color: Colors.brown,
                size: iconSize,
              ))
        ],
      )),
    );
  }
}
