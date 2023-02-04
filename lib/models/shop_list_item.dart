import 'package:magicsour/models/recipe/recipe_ingredient_model.dart';
import 'package:magicsour/models/measurement.dart';

class ShopListItem {
  final RecipeIngredientModel ingredient;
  int amount;
  Measurement measure;
  bool unavailable;

  ShopListItem({required this.amount, required this.ingredient, this.unavailable = false}) :
    measure = ingredient.measure;
}