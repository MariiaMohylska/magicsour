import 'package:flutter/material.dart';
import 'package:magicsour/ui_kit/recipe_cards/favourite_button.dart';

class RecipeTitleWithImage extends StatelessWidget {
  final String image;
  final String name;
  final String id;

  const RecipeTitleWithImage({super.key, required this.image, required this.name, required this.id});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Image.network(
              image,
              fit: BoxFit.cover),
        ),
        Container(
          height: 200,
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              Colors.brown.shade800.withOpacity(0.9),
              Colors.brown.withOpacity(0.65),
              Colors.brown.shade200.withOpacity(0.05)
            ], begin: Alignment.bottomCenter, end: Alignment.topCenter),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              width: MediaQuery.of(context).size.width - 75,
              padding: const EdgeInsets.all(18),
              alignment: Alignment.bottomLeft,
              child: Text(
                name,
                style: TextStyle(
                  color: Colors.white.withOpacity(0.95),
                  fontSize: 30,
                ),
              ),
            ),
            FavouriteButton(dishId: id),
          ],
        ),
      ],
    );
  }

}