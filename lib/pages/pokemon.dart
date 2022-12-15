import 'package:flutter/material.dart';

class Pokemon extends StatelessWidget {
  const Pokemon({super.key});

  @override
  Widget build(BuildContext context) {
    final arg = (ModalRoute.of(context)?.settings.arguments ??
        <String, dynamic>{}) as Map;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Pokedex'),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Column(
        children: [
          Center(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    arg['name'],
                    style: const TextStyle(fontSize: 25),
                  ),
                ),
                Image.network(
                  arg['image'],
                  height: 150,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
