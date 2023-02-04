import 'package:flutter/material.dart';
import 'package:magicsour/models/recipe/recipe_model.dart';
import 'package:magicsour/ui_kit/recipes_page_components/ingredients_list.dart';
import 'package:magicsour/ui_kit/recipes_page_components/nutrition_row.dart';
import 'package:magicsour/ui_kit/recipes_page_components/recipe_title_with_image.dart';
import 'package:magicsour/ui_kit/recipes_page_components/steps_list.dart';

class RecipeScreen extends StatefulWidget {
  final RecipeModel dish;

  const RecipeScreen({super.key, required this.dish});

  @override
  RecipeScreenState createState() => RecipeScreenState();
}

class RecipeScreenState extends State<RecipeScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          RecipeTitleWithImage(
              image: widget.dish.image ??
                  "https://dish.co.nz/media/VERSIONS/2019/11/21/Dish-87-crushed-roasted-potatoes_article--740x1005.png",
              name: widget.dish.name,
              id: widget.dish.id),
          NutritionRow(nutrition: widget.dish.nutrition),
          IngredientsList(
            ingredients: widget.dish.ingredients,
          ),
          StepsList(steps: widget.dish.steps),
        ],
      ),
    );
  }
}
