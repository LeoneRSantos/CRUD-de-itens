import 'package:crud_de_itens/provider/itens_provider.dart';
import 'package:crud_de_itens/views/formulario.dart';
import 'package:crud_de_itens/widgets/componenteCard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart'
    hide ChangeNotifierProvider, Provider;
import 'models/item.dart';
import 'package:provider/provider.dart';

import 'models/mapa_itens.dart';

void main() {
  runApp(
    ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ItensProvider(),
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const Home(),
      ),
    );
  }
}

class Home extends ConsumerWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final List<Item> itens =
        ref.watch(ItensProvider.referenciaItensProvider).getItens;
    final ItensProvider itensProvider = Provider.of(context);
    MapaDeItens balancoAtual = MapaDeItens();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Transações'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Formulario()),
              );
            },
            icon: const Icon(
              Icons.add,
            ),
          ),
        ],
        elevation: 0.8,
      ),
      body: ListView.builder(
        itemCount: itensProvider.quantidadeDeElementos,
        itemBuilder: (BuildContext context, int index) {
          return ComponenteCard(item: itensProvider.getIndex(index));
        },
      ),
    );
  }
}
