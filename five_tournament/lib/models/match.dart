class Match {
  final String equipeDomicile;
  final String equipeExterieur;
  String terrain;
  final String date;
  int? scoreDomicile; // Nouveau champ : score de l'équipe à domicile
  int? scoreExterieur; // Nouveau champ : score de l'équipe à l'extérieur

  Match({
    required this.equipeDomicile,
    required this.equipeExterieur,
    required this.terrain,
    required this.date,
    this.scoreDomicile, // Initialement null
    this.scoreExterieur, // Initialement null
  });
}
