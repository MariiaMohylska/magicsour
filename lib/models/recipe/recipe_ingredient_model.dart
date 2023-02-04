import 'package:magicsour/models/ingredient.dart';
import 'package:magicsour/models/measurement.dart';
import 'package:magicsour/models/nutrition.dart';
import 'package:magicsour/models/product_type.dart';
import 'package:magicsour/utils/mappers/measurement_mapper.dart';

class RecipeIngredientModel {
  final Ingredient ingredient;
  double count;
  final Measurement measure;

  RecipeIngredientModel({
    required this.ingredient,
    required this.count,
    required this.measure,
  });

  RecipeIngredientModel.fromJson(
      Map snapshot, Map<String, Ingredient> ingredientsMap)
      : ingredient = _getIngredients(snapshot['name'] ?? '', ingredientsMap),
        count = double.parse(snapshot['count'].toString()),
        measure = MeasurementMapper.measurementFromString(
                snapshot['measure'] ?? '');

  Map toJson() => {
        "ingredient": ingredient.name,
        "count": count,
        "measure": MeasurementMapper.measurementToString(measure)
      };

  static Ingredient _getIngredients(
      String ingredientName, Map<String, Ingredient> ingredientsMap) {
    return ingredientsMap[ingredientName] ??
        Ingredient(
            name: ingredientName,
            type: ProductType.unknown,
            nutrition:
                Nutrition(calories: 0, protein: 0, fat: 0, carbohydrates: 0));
  }
}
