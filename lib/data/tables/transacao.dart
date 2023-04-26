import 'package:isar/isar.dart';

part 'transacao.g.dart';

@collection
class Transacao {
  Id id = Isar.autoIncrement;

  String? titulo;
  double? valor;
  bool? eCompra;
}
