import '../models/joueur.dart';
import '../models/equipe.dart';
import '../models/poule.dart';
import '../models/match.dart';

final joueursEquipeA = [
  Joueur(nom: 'Alice', numero: 1),
  Joueur(nom: 'Bob', numero: 2),
];

final joueursEquipeB = [
  Joueur(nom: 'David', numero: 1),
  Joueur(nom: 'Eve', numero: 2),
];

final equipeA = Equipe(nom: 'Équipe A', capitaine: 'Alice', joueurs: ['Bob']);
final equipeB = Equipe(nom: 'Équipe B', capitaine: 'David', joueurs: ['Eve']);

final poules = [
  Poule(nom: 'Poule 1', equipes: [equipeA, equipeB]),
];

List<Match> matchs = [
  Match(
    equipeDomicile: 'Équipe 1',
    equipeExterieur: 'Équipe 2',
    terrain: 'Stade A',
    date: '2024-12-01',
  ),
  Match(
    equipeDomicile: 'Équipe 3',
    equipeExterieur: 'Équipe 4',
    terrain: 'Stade B',
    date: '2024-12-02',
  ),
];
