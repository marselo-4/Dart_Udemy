import 'package:flutter/material.dart';

class MyButton extends StatefulWidget{
  @override
  _MyButtonState createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton>{

  var texto = "";
  int index = 0;
  List<String> collections = ['Hola', 'buenos', 'días'];

  void onPressButton(){
    setState(() {
      texto = collections[index];

      // ? = then    : = else  ?? = si es null
      index = index < 2 ? index +1 : 0;
    });
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Stateful Widget"),
        backgroundColor: Colors.orangeAccent,
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
            Text(
              texto,
              style: TextStyle(
                fontSize: 40.0,
              ),
              ),
              Padding(padding: EdgeInsets.all(10.0),),
              
              // Elevated button es com mes bonic
              ElevatedButton(
                onPressed: onPressButton,
                style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.orangeAccent)),
                child: Text("Actualizar")),
              
              // Floating no reescale pero es mes facil de personalitzar
              FloatingActionButton(
                child: Text("Actualizar", 
                  style: TextStyle(color: Colors.white),
                ),
                backgroundColor: Colors.blueAccent,
                onPressed: onPressButton
            )
          ],),
        ),
        ),
    );
  }

}