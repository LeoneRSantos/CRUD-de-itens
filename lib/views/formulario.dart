import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/item.dart';
import '../provider/itens_provider.dart';

class Formulario extends StatefulWidget {
  const Formulario({Key? key}) : super(key: key);

  @override
  State<Formulario> createState() => _FormularioState();
}

class _FormularioState extends State<Formulario> {
  final _inputFormulario = GlobalKey<FormState>();

  final Map<String, String?> _auxiliarFormulario = {};

  void _carregarDados(Item item) {
    if (item != null) {
      _auxiliarFormulario['id'] = item.id;
      _auxiliarFormulario['titulo'] = item.titulo;
      _auxiliarFormulario['valor'] = item.valor.toString();
      _auxiliarFormulario['tipo'] = item.tipo;
    }
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    final itemAtual = ModalRoute.of(context)!.settings.arguments as Item;

    _carregarDados(itemAtual);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        elevation: 0.0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 32.0, horizontal: 8.0),
        child: SingleChildScrollView(
          child: Form(
            key: _inputFormulario,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: TextFormField(
                    initialValue: _auxiliarFormulario['titulo'],
                    decoration: const InputDecoration(
                      labelText: 'Título',
                    ),
                    validator: (valor) {
                      if (valor == null || valor.trim().isEmpty) {
                        return "Este campo está vazio.";
                      } else {
                        _inputFormulario.currentState!.save();
                      }
                    },
                    onSaved: (valorInserido) =>
                        _auxiliarFormulario['titulo'] = valorInserido,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: TextFormField(
                    initialValue: _auxiliarFormulario['valor'],
                    decoration: const InputDecoration(
                      labelText: 'Valor',
                    ),
                    validator: (valor) {
                      if (valor == null || valor.trim().isEmpty) {
                        return "Este campo está vazio.";
                      } else {
                        _inputFormulario.currentState!.save();
                      }
                    },
                    onSaved: ((valorInserido) =>
                        _auxiliarFormulario['valor'] = valorInserido),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: TextFormField(
                    initialValue: _auxiliarFormulario['tipo'],
                    decoration: const InputDecoration(
                      labelText: 'Tipo (venda/compra)',
                    ),
                    onSaved: (valorIserido) =>
                        _auxiliarFormulario['tipo'] = valorIserido,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 12.0, vertical: 24.0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      elevation: 0.0,
                    ),
                    onPressed: () {
                      final _valido = _inputFormulario.currentState?.validate();

                      if (_valido!) {
                        _inputFormulario.currentState?.save();

                        Provider.of<ItensProvider>(context, listen: false)
                            .putItem(Item(
                          id: _auxiliarFormulario['id'],
                          titulo: _auxiliarFormulario['titulo']!,
                          valor: _auxiliarFormulario['valor']!,
                          tipo: _auxiliarFormulario['tipo']!,
                        ));
                        Navigator.of(context).pop();
                      }
                    },
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Salvar',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}