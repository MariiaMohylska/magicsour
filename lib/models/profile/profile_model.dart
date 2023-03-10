import 'package:magicsour/models/allergens.dart';
import 'package:magicsour/models/ingredient.dart';
import 'package:magicsour/utils/mappers/allergens_mapper.dart';

class ProfileModel {
  final String name;
  final String uid;
  List<String> favorites;
  List<Allergens> allergens;
  List<Ingredient> restrictedProducts;

  ProfileModel({
    required this.name,
    required this.uid,
    required this.allergens,
    required this.restrictedProducts,
    required this.favorites,
  });

  ProfileModel.fromJson(
      Map<String, dynamic> snapshot, List<Ingredient> ingredientsList)
      : name = snapshot['name'],
        uid = snapshot['uid'],
        favorites = _getFavorites(snapshot['favorites'] ?? []),
        allergens = _getAllergens(snapshot['allergens'] ?? []),
        restrictedProducts = _getIngredients(
            snapshot['restrictedProducts'] ?? [], ingredientsList);

  static List<Allergens> _getAllergens(List<dynamic> allergensSnapshot) {
    final List<Allergens> allergensList = [];

    for (var e in allergensSnapshot) {
      final allergen = AllergensMapper.allergensFromString(e);
      if (allergen != null) {
        allergensList.add(allergen);
      }
    }

    return allergensList;
  }

  static List<String> _getFavorites(List<dynamic> favoritesSnapshot) =>
      favoritesSnapshot.map((favoriteId) => favoriteId.toString()).toList();

  static List<Ingredient> _getIngredients(
      List<dynamic> ingredientsSnapshot, List<Ingredient> ingredientsList) {
    final List<Ingredient> products = [];

    for (var element in ingredientsList) {
      if (ingredientsSnapshot.contains(element.id)) {
        products.add(element);
      }
    }

    return products;
  }

  Map<String, Object> toJson() => {
        "uid": uid,
        "name": name,
        "favorites": favorites,
        "restrictedProducts": restrictedProducts.map((e) => e.id).toList(),
        "allergens":
            allergens.map((e) => AllergensMapper.allergensToString(e)).toList(),
      };
}
