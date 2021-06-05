import 'package:flutter/material.dart';
import 'package:soto/pages/primero.dart';
import 'package:soto/pages/segundo.dart';
import 'package:soto/pages/tercero.dart';
import 'package:soto/pages/cuarto.dart';
import 'package:soto/pages/quinto.dart';

void main() => runApp(cesarApp());

class cesarApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Soto',
      home: PaginaInicio(),
    ); //Fin Material App
  } //Fin Widget
} //Fin de fridaApp

class PaginaInicio extends StatefulWidget {
  @override
  _PaginaInicioState createState() => _PaginaInicioState();
} //Fin Clase Pagina Inicio

class _PaginaInicioState extends State<PaginaInicio> {
  int _index = 0;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size; //Variable size
    Widget child; //Widget creado por usuario
    switch (_index) {
      case 0:
        child = MaterialApp(debugShowCheckedModeBanner: false, home: new FirstPage());
        break;
      case 1:
        child = MaterialApp(debugShowCheckedModeBanner: false, home: new SecondPage());
        break;
      case 2:
        child = MaterialApp(debugShowCheckedModeBanner: false, home: new ThirdPage());
        break;
      case 3:
        child = MaterialApp(debugShowCheckedModeBanner: false, home: new CuartaPage());
        break;
      case 4:
        child = MaterialApp(debugShowCheckedModeBanner: false, home: new QuintaPage());
        break;    
    } //Fin Switch Selecciona Paginas
    return Scaffold(
      body: SizedBox.expand(child: child),
      bottomNavigationBar: BottomNavigationBar(backgroundColor: Colors.blue, onTap: (newIndex) => setState(() => _index = newIndex), currentIndex: _index, items: [
        
        BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.blue, size: 30.0), //icon
            title: Text('Inicio', style: TextStyle(color: Colors.black),)), 
        BottomNavigationBarItem(
            icon: Icon(Icons.add_shopping_cart, color: Colors.green, size: 30.0), //icon
            title: Text('Precios', style: TextStyle(color: Colors.black),)), 
        BottomNavigationBarItem(
            icon: Icon(Icons.attach_money, color: Colors.black, size: 30.0), //icon
            title: Text('Dinero', style: TextStyle(color: Colors.black),)),
        BottomNavigationBarItem(
            icon: Icon(Icons.credit_card, color: Colors.red, size: 30.0), //icon
            title: Text('Saldo', style: TextStyle(color: Colors.black),)),
        BottomNavigationBarItem(
            icon: Icon(Icons.settings_outlined, color: Colors.purple, size: 30.0), //icon
            title: Text('Configuracion', style: TextStyle(color: Colors.black),)),            
      ]), // bottom
    ); //Fin Scaffold
  } //Fin Widget
} //Fin Pagina Inicio