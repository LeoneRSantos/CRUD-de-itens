import 'package:crud_de_itens/models/mapa_itens.dart';
import 'package:crud_de_itens/provider/itens_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/item.dart';

class ComponenteCard extends StatelessWidget {
  ComponenteCard({super.key, required this.item});
  final Item item;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: ListTile(
                title: Text(
                  item.titulo,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  'R\$ ${item.valor}',
                  style: const TextStyle(),
                ),
                trailing: Text(item.tipo),
              ),
            ),
          ), 
          
        ],
      ),
    );
  }
}
