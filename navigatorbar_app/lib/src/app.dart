import 'package:flutter/material.dart';
import 'package:navigatorbar_app/src/screens/second.dart';

class App extends StatefulWidget {
  @override
  _AppState createState() => new _AppState();
 }
class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
      appBar: AppBar(
        title: Text('Primera Pantalla'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Ir a la segunda pantalla'),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => Second(title: "Hola",)));
          },
        )
      ),
   );
  }
}