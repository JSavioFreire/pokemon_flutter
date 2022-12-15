import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:pokemon_flutter/api/class_api.dart';
import 'package:pokemon_flutter/components/card_pokemon.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    ValueNotifier api = ValueNotifier([]);

    callApi() async {
      var client = http.Client();
      try {
        var response = await client.get(Uri.parse(
            'https://raw.githubusercontent.com/Biuni/PokemonGO-Pokedex/master/pokedex.json'));
        var res = jsonDecode(response.body);
        var resData = res['pokemon'] as List;
        api.value = resData.map((e) => FirstApi.fromJson(e)).toList();
      } finally {
        client.close();
      }
    }

    callApi();
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).primaryColor,
          title: const Text(
            'Pokedex',
            style: TextStyle(fontSize: 25),
          ),
          elevation: 10,
          centerTitle: true,
        ),
        body: Container(
          margin: const EdgeInsets.only(top: 15),
          child: ValueListenableBuilder(
              valueListenable: api,
              builder: (_, value, __) => GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                  itemCount: value.length,
                  itemBuilder: (_, index) => GridTile(
                          child: Container(
                        margin: const EdgeInsets.symmetric(
                            vertical: 2, horizontal: 0),
                        child: CardPokemon(value[index].name,
                            value[index].image, value[index].type),
                      )))),
        ));
  }
}
