import 'package:magicsour/models/ingredient.dart';
import 'package:magicsour/models/nutrition.dart';
import 'package:magicsour/models/product_type.dart';

class StepModel {
  int number;
  String description;
  String video;
  String image;
  double time;
  List<Ingredient>? ingredients;

  StepModel({
    required this.number,
    required this.description,
    required this.video,
    required this.image,
    required this.time,
    required this.ingredients,
  });

  StepModel.fromJson(Map snapshot, Map<String, Ingredient> ingredientsMap)
      : number = int.parse(snapshot['number'].toString()),
  description = snapshot['description'] ?? '',
  video = snapshot['video'] ?? '',
  image = snapshot['image'] ?? '',
  time = double.parse(snapshot['time'].toString()),
  ingredients = _getIngredients(snapshot['ingredients'] ?? [], ingredientsMap) ;

  Map toJson() => {
    "number" : number,
    "description": description,
    "video": video,
    "image": image,
    "time": time,
    "ingredients": ingredients?.map((e) => e.toJson()).toList() ?? []
  };

  static List<Ingredient> _getIngredients(
      List<dynamic> ingredients, Map<String, Ingredient> ingredientsMap) {
    return ingredients.map((ingredient) => ingredientsMap[ingredient] ??
        Ingredient(
            name: ingredient,
            id: '',
            type: ProductType.unknown,
            nutrition:
            Nutrition(calories: 0, protein: 0, fat: 0, carbohydrates: 0))).toList();
  }
}
