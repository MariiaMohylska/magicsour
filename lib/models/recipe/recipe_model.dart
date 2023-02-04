import 'package:magicsour/models/allergens.dart';
import 'package:magicsour/models/complexity.dart';
import 'package:magicsour/models/ingredient.dart';
import 'package:magicsour/models/nutrition.dart';
import 'package:magicsour/models/recipe/recipe_ingredient_model.dart';
import 'package:magicsour/models/step_model.dart';
import 'package:magicsour/models/tag.dart';
import 'package:magicsour/utils/mappers/allergens_mapper.dart';
import 'package:magicsour/utils/mappers/complexity_mapper.dart';
import 'package:magicsour/utils/mappers/tag_mapper.dart';

class RecipeModel {
  String id;
  String name;
  String description;
  String? image;
  Nutrition nutrition;
  double timeInSecond;
  Complexity complexity;
  List<Tag> tags;
  List<RecipeIngredientModel> ingredients;
  List<StepModel> steps;
  List<Allergens?> allergens;

  RecipeModel({
    required this.id,
    required this.name,
    required this.description,
    required this.nutrition,
    required this.timeInSecond,
    required this.complexity,
    required this.tags,
    required this.ingredients,
    required this.steps,
    required this.allergens,
    this.image,
  });

  RecipeModel.fromJson(Map snapshot, Map<String, Ingredient> ingredientsMap)
      : id = snapshot['id'] ?? '',
        name = snapshot['name'] ?? '',
        description = snapshot['description'] ?? '',
        image = snapshot['image'] ?? '',
        nutrition = Nutrition.fromJson(snapshot['nutrition']) ,
        timeInSecond = double.parse(snapshot['timeInSecond'].toString()),
        complexity =
            ComplexityMapper.complexityFromNumber(snapshot['complexity']),
        tags = _getTags(snapshot['tags']),
        steps = _getSteps(snapshot['steps'], ingredientsMap),
        ingredients = _getIngredients(snapshot['ingredients'], ingredientsMap),
        allergens = _getAllergens(snapshot['allergens']);

  Map toJson() => {
        "id": id,
        "name": name,
        "description": description,
        "image": image,
        "nutrition": nutrition.toJson(),
        "timeInSecond": timeInSecond,
        "complexity": ComplexityMapper.complexityToNumber(complexity),
        "tags": tags.map((e) => TagMapper.tagToString(e)).toList(),
        "steps": steps.map((e) => e.toJson()).toList(),
        "ingredients": ingredients.map((e) => e.toJson()).toList(),
        "allergens": allergens.map((e) => AllergensMapper.allergensToString(e)).toList(),

      };

  static List<Tag> _getTags(List<dynamic> tagSnapshot) => tagSnapshot.map((e) => TagMapper.tagFromString(e)).toList();

  static List<Allergens?> _getAllergens(List<dynamic> allergensSnapshot) => allergensSnapshot
        .map((e) => AllergensMapper.allergensFromString(e))
        .toList();

  static List<StepModel> _getSteps(List<dynamic> stepsSnapshot, Map<String, Ingredient> ingredientsMap) => stepsSnapshot
        .map((stepModel) => StepModel.fromJson(stepModel, ingredientsMap))
        .toList();

  static List<RecipeIngredientModel> _getIngredients(
      List<dynamic> ingredientsSnapshot, Map<String, Ingredient> ingredientsMap) => ingredientsSnapshot
        .map((ingredientModel) => RecipeIngredientModel.fromJson(ingredientModel, ingredientsMap))
        .toList();
}
