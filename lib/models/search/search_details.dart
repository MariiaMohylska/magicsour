import 'package:magicsour/models/allergens.dart';
import 'package:magicsour/models/ingredient.dart';
import 'package:magicsour/models/product_type.dart';
import 'package:magicsour/models/selectable_model.dart';
import 'package:magicsour/models/tag.dart';

class SearchDetailsModel {
  final String name;
  final double calories;
  final double time;
  final List<Allergens> allergens;
  final List<Tag> tags;
  final Map<SelectableModel<ProductType>, List<SelectableModel<Ingredient>>>
      restrictedProducts;
  final bool usePersonal;
  final bool isGenerate;

  SearchDetailsModel({
    required this.name,
    required this.calories,
    required this.time,
    required this.allergens,
    required this.tags,
    required this.usePersonal,
    required this.isGenerate,
    required this.restrictedProducts,
  });
}
