import 'package:flutter/material.dart';

import '../models/equipe.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tournoi Football 5'),
      ),
      body: Center(
        child: Text('Bienvenue au tournoi !'),
      ),
    );
  }
}

final equipes = [
  Equipe(nom: 'Équipe A', capitaine: 'Alice', joueurs: ['Bob', 'Charlie']),
  Equipe(nom: 'Équipe B', capitaine: 'David', joueurs: ['Eve', 'Frank']),
];

@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: Text('Tournoi Football 5'),
    ),
    body: ListView.builder(
      itemCount: equipes.length,
      itemBuilder: (context, index) {
        final equipe = equipes[index];
        return ListTile(
          title: Text(equipe.nom),
          subtitle: Text('Capitaine : ${equipe.capitaine}'),
        );
      },
    ),
  );
}
