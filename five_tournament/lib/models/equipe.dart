class Equipe {
  final String nom;
  final String capitaine;
  final List<String> joueurs;

  Equipe({
    required this.nom,
    required this.capitaine,
    required this.joueurs,
  });

  // Méthode pour afficher les données (utile pour déboguer)
  @override
  String toString() => 'Equipe: $nom, Capitaine: $capitaine';
}
