import 'package:flutter/material.dart';
import 'package:pokemon_app/data/mockdata/generations.dart';
import 'package:pokemon_app/domain/entities/generation.dart';
import 'package:pokemon_app/presentation/geracao.dart';

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
