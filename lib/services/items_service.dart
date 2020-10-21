import 'dart:async';
import 'package:singleton/models/item.dart';

class _ListaProductos {
  List<Item> _listadoProductos = [];
  StreamController<List<Item>> _listadoProductosStream = new StreamController<List<Item>>.broadcast();

  bool get exitenProductos => this._listadoProductos.length > 0;
  List<Item> get listarProductos => this._listadoProductos;
  Stream<List<Item>> get listadoStream => _listadoProductosStream.stream;

  void agregarProducto(Item item) {
    this._listadoProductos.add(item);
    _listadoProductosStream.add(this._listadoProductos);
  }

  void dispose(){
    _listadoProductosStream?.close();
  }

}

final listaProductos =  new _ListaProductos();
