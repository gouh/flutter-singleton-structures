import 'package:flutter/material.dart';
import 'package:singleton/services/items_service.dart';
import 'package:singleton/models/item.dart';

class CarritoPage extends StatelessWidget {
  // final List<Item> items = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Carrito')),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: EdgeInsets.all(20.0),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.plus_one),
        onPressed: () {
          Item producto = Item(nombre: 'Nuevo', precio: 10.0);
          listaProductos.agregarProducto(producto);
        }
      ),
    );
  }
}
