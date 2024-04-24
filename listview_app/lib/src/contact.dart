import 'package:flutter/material.dart';
import 'package:listview_app/src/model/contact_model.dart';
import 'package:listview_app/src/screens/contact_item.dart';

class Contact extends StatelessWidget {

  buildList(){
    return <ContactModel>[
      ContactModel(correo: 'carlosmartinez.ntv.es', nombre: 'Carlos Martínez'),
      ContactModel(correo: 'luisgarcia.ntv.es', nombre: 'Luis García'),
      ContactModel(correo: 'joseperez.ntv.es', nombre: 'José Pérez'),
      ContactModel(correo: 'mariagomez.ntv.es', nombre: 'María Gómez'),
      ContactModel(correo: 'lauragonzalez.ntv.es', nombre: 'Laura González'),
      ContactModel(correo: 'pedrolopez.ntv.es', nombre: 'Pedro López'),
      ContactModel(correo: 'javierrodriguez.ntv.es', nombre: 'Javier Rodríguez'),
      ContactModel(correo: 'miguelramos.ntv.es', nombre: 'Miguel Ramos'),
      ContactModel(correo: 'jorgemartin.ntv.es', nombre: 'Jorge Martín'),
      ContactModel(correo: 'albertosanchez.ntv.es', nombre: 'Alberto Sánchez'),
    ];
  }

  List<ContactItem> buildContactList(){
    return buildList()
    .map<ContactItem>((contact) => ContactItem(contact: contact))
    .toList();
  }

 @override
 Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: Text('Contactos'),
    ),
    body: ListView(
      children: buildContactList()
    ),
 );
 }
}