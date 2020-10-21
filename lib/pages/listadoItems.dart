import 'package:flutter/material.dart';
import 'package:singleton/services/items_service.dart';
import 'package:singleton/models/item.dart';
class ListadoItemsPage extends StatelessWidget {
  const ListadoItemsPage({Key key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Carrito'),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.add_shopping_cart,
              color: Colors.white,
            ),
            onPressed: () {
              // do something
              Navigator.pushNamed(context, 'carrito');
            },
          )
        ],
      ),
      body: StreamBuilder(
        stream: listaProductos.listadoStream,
        builder: (BuildContext context, AsyncSnapshot<List<Item>> snapshot) {
          List<Item> itemsList = snapshot.data;
          if (!snapshot.hasData) {
            return Text('No hay información');
          }else{
            return ListView.builder(
              itemCount: itemsList.length,
              itemBuilder: (context, index) {
                return ListTile(title: Text('${itemsList[index].nombre}'));
              },
            );
          }
        },
      ),
    );
  }
}
