import 'package:flutter/material.dart';
import '../models/equipe.dart';

class TeamDetailsScreen extends StatelessWidget {
  final Equipe equipe;

  TeamDetailsScreen({required this.equipe});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(equipe.nom),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text('Capitaine : ${equipe.capitaine}'),
          ),
          ...equipe.joueurs.map((joueur) => ListTile(
                title: Text(joueur),
              )),
        ],
      ),
    );
  }
}
