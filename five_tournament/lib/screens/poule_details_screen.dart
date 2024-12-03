import 'package:flutter/material.dart';
import '../models/poule.dart';
import '../models/equipe.dart';
import 'team_details_screen.dart'; // À créer si nécessaire

class PouleDetailsScreen extends StatelessWidget {
  final Poule poule;

  PouleDetailsScreen({required this.poule});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Détails de ${poule.nom}'),
      ),
      body: ListView(
        children: poule.equipes.map((Equipe equipe) {
          return ListTile(
            title: Text(equipe.nom),
            subtitle: Text('Capitaine : ${equipe.capitaine}'),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => TeamDetailsScreen(equipe: equipe),
                ),
              );
            },
          );
        }).toList(),
      ),
    );
  }
}
