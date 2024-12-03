import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'screens/poules_screen.dart';

void main() {
  runApp(TournoiApp());
}

class TournoiApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tournoi Football 5',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/poules': (context) => PoulesScreen(),
      },
    );
  }
}
