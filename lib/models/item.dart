import 'package:meta/meta.dart';

class Item {
  String nombre;
  double precio;

  Item({@required this.nombre, this.precio})
    :assert(nombre != null);
}
