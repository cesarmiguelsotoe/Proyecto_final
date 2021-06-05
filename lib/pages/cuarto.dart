import 'package:flutter/material.dart';

class CuartaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: Text(
                    'Saldo',
                    style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 35.0, color: Colors.blue),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Column(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(2.0),
                      child: Stack(
                        children: <Widget>[
                          Align(
                            child: new Image(
                              width: 300.0,
                              height: 200.0,
                              image: new AssetImage('assets/saldo.jpg'),
                            ), //image
                          ), //Align
                        ], //Widget[]
                      ), //Stack
                    ), //Container
                    SizedBox(
                      height: 40,
                    ),
                    TextField(
                      decoration: InputDecoration(hintText: "Numero de telefono", icon: Icon(Icons.call )),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    TextField(
                      decoration: InputDecoration(hintText: "Pesos de saldo", icon: Icon(Icons.add_to_home_screen)),
                    ),
                    SizedBox(
                      height: 40,
                    ), //SizedBox
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        FlatButton(
                          child: Text('Cancelar'),
                          color: Colors.purple[200],
                          splashColor: Colors.cyan,
                          padding: EdgeInsets.all(20.0),
                          onPressed: () {},
                        ), //Fin FlatButton
                        new Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        ),
                        RaisedButton(
                          child: Text(
                            'Poner saldo',
                          ),
                          color: Colors.purple[200],
                          splashColor: Colors.cyan,
                          animationDuration: Duration(seconds: 20),
                          padding: EdgeInsets.all(20.0),
                          colorBrightness: Brightness.light,
                          onPressed: () {},
                        ), //Fin Raised Button
                        SizedBox(
                      height: 40,
                    ),
                      ], //Fin niños Widget
                    ), //Fin de Niño Row
                  ], //Widget
                ), //Column
              ], //Widget
            ), //Column
          ), //Fin Single
        ), //Container
      ), //SafeArea
    ); //Scaffold
  } // widget
} // first page