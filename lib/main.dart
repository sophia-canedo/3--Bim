import 'package:flutter/material.dart';
import 'package:pokemon_app/data/mockdata/generations.dart';
import 'package:pokemon_app/presentation/tela_geracoes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pokémon App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TelaGeracoes(generations: generations),
    );
  }
}
