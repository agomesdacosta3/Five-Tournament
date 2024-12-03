import 'package:flutter/material.dart';
import '../models/match.dart';
import '../data/mock_data.dart';

class MatchesScreen extends StatefulWidget {
  @override
  _MatchesScreenState createState() => _MatchesScreenState();
}

class _MatchesScreenState extends State<MatchesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calendrier des Matchs'),
      ),
      body: ListView.builder(
        itemCount: matchs.length,
        itemBuilder: (context, index) {
          final match = matchs[index];
          return ListTile(
            title: Text('${match.equipeDomicile} vs ${match.equipeExterieur}'),
            subtitle: Text(
              'Terrain : ${match.terrain} | ${match.date} | Score : '
              '${match.scoreDomicile ?? '-'} - ${match.scoreExterieur ?? '-'}',
            ),
            trailing: IconButton(
              icon: Icon(Icons.sports_soccer),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    int scoreDomicile = match.scoreDomicile ?? 0;
                    int scoreExterieur = match.scoreExterieur ?? 0;

                    return AlertDialog(
                      title: Text('Entrer le Score'),
                      content: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          TextField(
                            decoration:
                                InputDecoration(labelText: 'Score Domicile'),
                            keyboardType: TextInputType.number,
                            onChanged: (value) {
                              scoreDomicile = int.tryParse(value) ?? 0;
                            },
                          ),
                          TextField(
                            decoration:
                                InputDecoration(labelText: 'Score Extérieur'),
                            keyboardType: TextInputType.number,
                            onChanged: (value) {
                              scoreExterieur = int.tryParse(value) ?? 0;
                            },
                          ),
                        ],
                      ),
                      actions: [
                        TextButton(
                          onPressed: () {
                            setState(() {
                              match.scoreDomicile = scoreDomicile;
                              match.scoreExterieur = scoreExterieur;
                            });
                            Navigator.pop(context);
                          },
                          child: Text('Enregistrer'),
                        ),
                      ],
                    );
                  },
                );
              },
            ),
          );
        },
      ),
    );
  }
}
