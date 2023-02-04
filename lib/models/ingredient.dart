import 'package:magicsour/models/allergens.dart';
import 'package:magicsour/models/nutrition.dart';
import 'package:magicsour/models/product_type.dart';
import 'package:magicsour/utils/mappers/allergens_mapper.dart';
import 'package:magicsour/utils/mappers/product_type_mapper.dart';

class Ingredient {
  String name;
  String id;
  ProductType type;
  Nutrition nutrition;
  Allergens? allergen;

  Ingredient({
    required this.name,
    required this.id,
    required this.type,
    required this.nutrition,
    this.allergen,
  });

  Ingredient.fromJson(Map<String, dynamic> snapshot, String snapShotId)
      : name = snapshot['name'] ?? '',
        id = snapShotId,
        type = ProductTypeMapper.productTypeFromString(snapshot['type'] ?? ''),
        nutrition = Nutrition.fromJson(snapshot['nutrition']),
        allergen = AllergensMapper.allergensFromString(snapshot['allergen'] ?? '');

  Map<String, dynamic> toJson() {
    return {
        "name": name,
        "type": ProductTypeMapper.productTypeToString(type),
        "nutrition": nutrition.toJson()
      };
  }
}
