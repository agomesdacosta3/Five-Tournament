import 'package:flutter/material.dart';
import '../models/poule.dart';
import '../data/mock_data.dart';
import 'poule_details_screen.dart';

class PoulesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Liste des Poules'),
      ),
      body: ListView.builder(
        itemCount: poules.length,
        itemBuilder: (context, index) {
          final poule = poules[index];
          return ListTile(
            title: Text(poule.nom),
            subtitle:
                Text('Équipes : ${poule.equipes.map((e) => e.nom).join(', ')}'),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PouleDetailsScreen(poule: poule),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
