import 'package:flutter/material.dart';
import '../data/mockdata/generations.dart';
import '../presentation/tela_geracoes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pokémon App',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: TelaGeracoes(generations: generations),
    );
  }
}
