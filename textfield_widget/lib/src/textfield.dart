import 'package:flutter/material.dart';

class Mytextfield extends StatefulWidget {
  @override
  _MytextfieldState createState() => new _MytextfieldState();
 }

class _MytextfieldState extends State<Mytextfield> {
  String nombre = '';
  String correo = '';
  String contrasena = '';
  final controlador = TextEditingController();

  @override
  Widget build(BuildContext context) {
   return Scaffold(
      appBar: AppBar(
        title: Text('TextField widget'),
        backgroundColor: Colors.red,
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            TextField(
              onSubmitted: printNombre,
              decoration: InputDecoration(
                hintText: 'Introduce tu nombre',
                labelText: 'Nombre',
              ),
            ),
            TextField(
              onSubmitted: printCorreo,
              decoration: InputDecoration(
                hintText: 'Introduce tu email',
                labelText: 'Email',
              ),
            ),
            TextField(
              onSubmitted: printContrasena,
              decoration: InputDecoration(
                hintText: 'Introduce tu contaseña',
                labelText: 'Contraseña',
              ),
            ),
            Text('Nombre: '+nombre+' Correo: '+correo+' Contraseña: '+contrasena),
          ],
        ),
      ),
   );
  }

  void printNombre (String value) {
    setState(() {
      nombre = value;
      controlador.text = '';
    });
  }

  void printCorreo (String value) {
    setState(() {
      correo = value;
      controlador.text = '';
    });
  }

  void printContrasena (String value) {
    setState(() {
      contrasena = value;
      controlador.text = '';
    });
  }
}