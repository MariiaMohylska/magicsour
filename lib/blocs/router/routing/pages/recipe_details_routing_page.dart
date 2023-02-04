import 'package:flutter/material.dart';
import 'package:magicsour/blocs/router/router_data.dart';
import 'package:magicsour/models/complexity.dart';
import 'package:magicsour/models/recipe/recipe_model.dart';
import 'package:magicsour/models/nutrition.dart';
import 'package:magicsour/screens/recipe_screen.dart';

class RecipeDetailsRoutingPage extends Page<Object> {
  late final RecipeModel dishModel;

  RecipeDetailsRoutingPage(RouteRecipeDetailsData data)
      : super(key: ValueKey(data.route), name: data.route) {
    dishModel = data.dishModel ??
        RecipeModel(
          id: '',
          name: '',
          description: '',
          nutrition: Nutrition(
              calories: 0, protein: 0, fat: 0, carbohydrates: 0),
          timeInSecond: 0,
          complexity: Complexity.easy,
          tags: [],
          ingredients: [],
          steps: [],
          allergens: [],);
  }


  @override
  Route<Object> createRoute(BuildContext context) {
    return MaterialPageRoute(
        builder: (_) => RecipeScreen(dish: dishModel), settings: this);
  }
}
