import 'package:flutter/material.dart';

class QuintaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Configuracion ',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.red[200],
      ), //fin appbar

      backgroundColor: Colors.white,
      body: ListView(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.contacts, color: Colors.blue),
            title: Text("Usuario"),
          ), //fin de listtile

          ListTile(
            leading: Icon(Icons.bookmark, color: Colors.red[200]),
            title: Text("Comprar despues"),
          ), //fin de listtile
          ListTile(
            leading: Icon(Icons.bluetooth, color: Colors.pink[700]),
            title: Text("Dispositivos cerca"),
          ), //fin de listtile
          ListTile(
            leading: Icon(Icons.call, color: Colors.black),
            title: Text("llamadas"),
          ), //fin de listtile
          ListTile(
            leading: Icon(Icons.mail_outline, color: Colors.purple),
            title: Text('Correo'),
          ), //Fin de listtile

          ListTile(
            leading: Icon(Icons.shop_two, color: Colors.orange),
            title: Text('Articulos Comprados'),
          ), //Fin de listtile
          ListTile(
            leading: Icon(Icons.sms, color: Colors.blue[200]),
            title: Text('Mensaje'),
          ), //Fin de listtile5
          ListTile(
            leading: Icon(Icons.card_travel, color: Colors.green[700]),
            title: Text('Productos en camino'),
          ), //Fin de listtile6
        ], //fin de widget
      ), //fin de list view
    ); //fin de scaffold
  }
}
