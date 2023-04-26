class Item {
  final String titulo;
  final String valor;
  final String tipo;
  final String? id;

  Item({
    required this.tipo,
    required this.titulo,
    required this.valor,
    this.id,
  });
}
