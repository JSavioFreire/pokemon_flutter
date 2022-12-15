import 'package:flutter/material.dart';

class CardImage extends StatelessWidget {
  final String image;
  const CardImage(this.image, {super.key});

  @override
  Widget build(BuildContext context) {
    return (Image.network(
      image,
      width: 100,
    ));
  }
}
