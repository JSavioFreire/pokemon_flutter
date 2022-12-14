import 'package:flutter/material.dart';
import 'package:pokemon_flutter/pages/home_page.dart';

void main() {
  runApp(const FlutterApp());
}

class FlutterApp extends StatelessWidget {
  const FlutterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pokemons',
      initialRoute: '/',
      routes:{
        '/':(context) => const HomePage()
      }
    );
  }
}