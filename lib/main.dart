import 'package:flutter/material.dart';
import 'package:singleton/pages/carrito.dart';
import 'package:singleton/pages/listadoItems.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'listadoItems',
      routes: {
        'listadoItems': (_) => new ListadoItemsPage(),
        'carrito': (_) => new CarritoPage()
      }
    );
  }
}
