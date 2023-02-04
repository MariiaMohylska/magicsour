import 'dart:math';

import 'package:magicsour/models/allergens.dart';
import 'package:magicsour/models/ingredient.dart';
import 'package:magicsour/models/recipe/recipe_model.dart';
import 'package:magicsour/utils/mappers/product_type_mapper.dart';

class RecipeRepository {
  List<RecipeModel>? _recipesList;
  List<Ingredient>? _ingredientList;


  List<RecipeModel> get recipesList => _recipesList ?? [];

  List<Ingredient> get ingredientList => _ingredientList ?? [];

  set setRecipesList(List<RecipeModel> list) =>
    _recipesList = list;

  set setIngredientMap(List<Ingredient> list) =>
    _ingredientList = list;

  double get maxCalories {
    final caloriesList = _recipesList?.map((e) => e.nutrition.calories).toList();

    return caloriesList?.reduce(max) ?? 1200;
  }

  double get maxTime {
    final timesList = _recipesList?.map((e) => e.timeInSecond).toList();

    return timesList?.reduce(max) ?? 10800;
  }

  double get minCalories {
    final caloriesList = _recipesList?.map((e) => e.nutrition.calories).toList();

    return caloriesList?.reduce(min) ?? 0;
  }

  double get minTime {
    final timesList = _recipesList?.map((e) => e.timeInSecond).toList();

    return timesList?.reduce(min) ?? 0;
  }


  Map<String, Ingredient> get getIngredientMapFromList =>
      {for (var ingredient in ingredientList) ingredient.name : ingredient};

  List<RecipeModel> getFiltratedList({
      List<RecipeModel>? list,
      required List<Ingredient> restrictedProducts,
      required List<Allergens?> allergens}) {
    List<RecipeModel> resultRecipeList = [...list ?? recipesList];

    for (var allergen in allergens) {
      resultRecipeList.removeWhere((recipe) =>
      recipe.allergens.contains(allergen) ||
          recipe.ingredients
              .map((ingredient) => ingredient.ingredient.allergen)
              .toList()
              .contains(allergen) ||
          recipe.ingredients
              .map((e) =>
              ProductTypeMapper.productTypeToAllergens(e.ingredient.type))
              .toList()
              .contains(allergen));
    }

    for (var product in restrictedProducts) {
      resultRecipeList.removeWhere((recipe) => recipe.ingredients
          .map((ingredient) => ingredient.ingredient)
          .toList()
          .contains(product));
    }

    return resultRecipeList;
  }
}