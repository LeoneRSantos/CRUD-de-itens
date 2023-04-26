import 'package:crud_de_itens/models/mapa_itens.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/item.dart';

class ItensProvider with ChangeNotifier {
  MapaDeItens mapa = MapaDeItens();

  List<Item> get getItens => [...mapa.getDados.values];

  int get quantidadeDeElementos => mapa.getDados.length;

  Item getIndex(int i) {
    return mapa.getDados.values.elementAt(i);
  }

  // Adicionar e atualizar
  void putItem(Item item) {
    if (item.id != null &&
        item.id!.trim().isNotEmpty &&
        mapa.getDados.containsKey(item.id)) {
      atualizarItem(item);
    } else {
      adicionarItem(item);
    }
  }

  // Adicionar Item
  void adicionarItem(Item item) {
    mapa.adicionar(item);

    notifyListeners();
  }

  // Atualizar Item
  void atualizarItem(Item item) {
    mapa.atualizar(item);

    notifyListeners();
  }

  // Remover
  void removeItems(Item item) {
    if (item.id != null && item.id!.isNotEmpty) {
      mapa.remover(item);

      notifyListeners();
    }
  }

  static final referenciaItensProvider =
      ChangeNotifierProvider<ItensProvider>((ref) {
    return ItensProvider();
  });
}
