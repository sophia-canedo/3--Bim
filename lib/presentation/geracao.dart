import 'package:flutter/material.dart';
import 'package:pokemon_app/domain/entities/generation.dart';

class Geracao extends StatelessWidget {
  final Generation generation;

  Geracao({required this.generation});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(generation.title),
      ),
      body: ListView.builder(
        itemCount: generation.pokemons.length,
        itemBuilder: (context, index) {
          final pokemonImage = generation.pokemons[index];
          return ListTile(
            title: Text('Pokemon ${index + 1}'),
            leading: Image.asset(pokemonImage),
          );
        },
      ),
    );
  }
}
