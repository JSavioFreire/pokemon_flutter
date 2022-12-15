import 'package:flutter/material.dart';

class CardText extends StatelessWidget {
  final String name;
  const CardText(this.name, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      name,
      style: const TextStyle(fontSize: 19, fontWeight: FontWeight.bold,),
    );
  }
}
