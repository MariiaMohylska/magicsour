import 'package:flutter/material.dart';
import 'package:magicsour/models/recipe/recipe_model.dart';
import 'package:magicsour/ui_kit/recipe_cards/recipe_card.dart';

class ResultScreen extends StatelessWidget {
  final List<RecipeModel> result;

  const ResultScreen({super.key, required this.result});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: result.length,
      itemBuilder: (context, index) => RecipeCard(dish: result[index]),
    );
  }
}
