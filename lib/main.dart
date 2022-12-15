import 'package:flutter/material.dart';
import 'package:pokemon_flutter/pages/home_page.dart';
import 'package:pokemon_flutter/pages/pokemon.dart';
import 'package:pokemon_flutter/theme/theme.dart';


void main() {
  runApp(const FlutterApp());
}

class FlutterApp extends StatelessWidget {
  const FlutterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: theme,
        title: 'Pokemons',
        initialRoute: '/',
        routes: {'/': (context) => const HomePage(), '/pokemon':(context) => const Pokemon() });
  }
}
