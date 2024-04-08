import 'package:flutter/material.dart';

void main() {
  var app = MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: Text("Mi primera aplicación")),
      body: Container(
        child: Center(
          child: Text(
            "Esta es mi app",
            style: TextStyle(fontSize: 20.0, color: Colors.orangeAccent),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('Has pulsado el boton');
        },
        child: Icon(Icons.headset_rounded),
      ),
    ),
  );
  runApp(app);
}


          // Positioned(
          //   bottom: 15.0, // Ajusta la distancia desde la parte inferior
          //   left: 500,
          //   right: 500,
          //   child: FloatingActionButton(
          //     onPressed: () {
          //       // Acción cuando se presiona el botón
          //     },
          //     child:
          //         Icon(Icons.dark_mode), // Cambia el icono según sea necesario
          //   ),
          // ),