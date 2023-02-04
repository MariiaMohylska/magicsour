import 'package:magicsour/models/allergens.dart';
import 'package:magicsour/models/ingredient.dart';
import 'package:magicsour/models/product_type.dart';
import 'package:magicsour/models/selectable_model.dart';

class SearchParametersModel {
  final double minCookingTime;
  final double defaultCookingTime;
  final double maxCookingTime;
  final double minCalories;
  final double defaultCalories;
  final double maxCalories;
  final List<Allergens> allergensList;
  final Map<SelectableModel<ProductType>, List<SelectableModel<Ingredient>>> restrictedProducts;

  SearchParametersModel({
    required this.minCookingTime,
    required this.defaultCookingTime,
    required this.maxCookingTime,
    required this.minCalories,
    required this.defaultCalories,
    required this.maxCalories,
    required this.allergensList,
    required this.restrictedProducts,
  });
}
