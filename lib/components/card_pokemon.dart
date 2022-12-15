import 'package:flutter/material.dart';
import 'package:pokemon_flutter/widget/card_image.dart';
import 'package:pokemon_flutter/widget/card_text.dart';

class CardPokemon extends StatelessWidget {
  final String name;
  final String image;
  final List type;
  const CardPokemon(this.name, this.image, this.type, {super.key});

  @override
  Widget build(BuildContext context) {
    var color = Colors.white;
    if (type[0] == 'Grass') {
      color = Colors.greenAccent;
    } else if (type[0] == 'Fire') {
      color = Colors.redAccent;
    } else if (type[0] == 'Water') {
      color = Colors.blueAccent;
    } else if (type[0] == 'Bug') {
      color = Colors.green;
    } else if (type[0] == 'Normal') {
      color = Colors.white60;
    } else if (type[0] == 'Poison') {
      color = Colors.purple;
    } else if (type[0] == 'Electric') {
      color = Colors.yellowAccent;
    } else if (type[0] == 'Ground') {
      color = Colors.brown;
    } else if (type[0] == 'Psychic') {
      color = Colors.deepPurpleAccent;
    } else if (type[0] == 'Fighting') {
      color = Colors.red;
    } else if (type[0] == 'Rock') {
      color = Colors.blueGrey;
    } else if (type[0] == 'Ghost') {
      color = Colors.black45;
    } else if (type[0] == 'Ice') {
      color = Colors.lightBlueAccent;
    } else if (type[0] == 'Dragon') {
      color = Colors.amber;
    }

    return TextButton(
      onPressed: () {
        Navigator.pushNamed(context, '/pokemon',
            arguments: {'name': name, 'image': image, 'type' : type});
      },
      child: Card(
        color: color,
        elevation: 10,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CardText(name),
              CardImage(image),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  for (var i = 0; i < type.length; i++) Text(type[i])
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
