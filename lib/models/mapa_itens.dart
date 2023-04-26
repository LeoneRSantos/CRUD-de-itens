import 'item.dart';

class MapaDeItens {
  int auxID = 3;

  final Map<String, Item> _mapa_de_itens = {
    "1": Item(titulo: "Mesa de escritório", valor: '100.00', tipo: 'venda'),
  };

  Map get getDados => _mapa_de_itens;

  // Adicionar
  void adicionar(Item item) {
    getDados.putIfAbsent(
      '$auxID',
      () => Item(
        titulo: item.titulo,
        valor: item.valor,
        tipo: item.tipo,
      ),
    );
    auxID++;
  }

  // Atualizar
  void atualizar(Item item) {
    getDados.update(
      item.id!,
      (_) => Item(
        titulo: item.titulo,
        valor: item.valor,
        tipo: item.tipo,
      ),
    );
  }

  // Remover
  void remover(Item item) {
    getDados.remove(item.id);
  }
}
