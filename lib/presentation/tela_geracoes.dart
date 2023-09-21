import 'package:flutter/material.dart';
import '../data/mockdata/generations.dart';
import '../domain/entities/generation.dart';
import '../presentation/geracao.dart';

class TelaGeracoes extends StatelessWidget {
  final List<Generation> generations;

  TelaGeracoes({required this.generations});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gerações Pokémon'),
      ),
      body: ListView.builder(
        itemCount: generations.length,
        itemBuilder: (context, index) {
          final generation = generations[index];
          return ListTile(
            title: Text(generation.title),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => Geracao(generation: generation),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
