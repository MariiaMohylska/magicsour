import 'package:magicsour/models/allergens.dart';
import 'package:magicsour/models/product_type.dart';
import 'package:magicsour/s_localization.dart';

class ProductTypeMapper {
  static String productTypeToString(
      ProductType productType) {
    switch (productType) {
      case ProductType.meat:
        return S.instance!.meat;
      case ProductType.fish:
        return S.instance!.fish;
      case ProductType.poultry:
        return S.instance!.poultry;
      case ProductType.egg:
        return S.instance!.eggs;
      case ProductType.dairy:
        return S.instance!.dairyProducts;
      case ProductType.seafood:
        return S.instance!.seafood;
      case ProductType.vegetable:
        return S.instance!.vegetables;
      case ProductType.mushroom:
        return S.instance!.mushroom;
      case ProductType.fruit:
        return S.instance!.fruits;
      case ProductType.nuts:
        return S.instance!.nuts;
      case ProductType.cereal:
        return S.instance!.cereal;
      case ProductType.berries:
        return S.instance!.berries;
      case ProductType.beans:
        return S.instance!.beans;
      case ProductType.oil:
        return S.instance!.oil;
      case ProductType.flourProduct:
        return S.instance!.flourProducts;
      case ProductType.sugarHoney:
        return S.instance!.sugarAndHoney;
      case ProductType.spices:
        return S.instance!.spices;
      case ProductType.alcohol:
        return S.instance!.alcohol;
      case ProductType.drink:
        return S.instance!.drinks;
      case ProductType.olives:
        return S.instance!.olives;
      case ProductType.driedFruit:
        return S.instance!.driedFruits;
      case ProductType.greens:
        return S.instance!.greens;
      case ProductType.confectionery:
        return S.instance!.confectionery;
      case ProductType.macaroni:
        return S.instance!.macaroni;
      case ProductType.cheese:
        return S.instance!.cheese;
      case ProductType.sauce:
        return S.instance!.sauce;
      case ProductType.unknown:
        return S.instance!.unknown;
    }
  }

  static ProductType productTypeFromString(String productType) {

   return {
        S.instance!.meat.toLowerCase(): ProductType.meat,
        S.instance!.fish.toLowerCase(): ProductType.fish,
        S.instance!.poultry.toLowerCase(): ProductType.poultry,
        S.instance!.eggs.toLowerCase(): ProductType.egg,
        S.instance!.dairyProducts.toLowerCase(): ProductType.dairy,
        S.instance!.seafood.toLowerCase(): ProductType.seafood,
        S.instance!.vegetables.toLowerCase(): ProductType.vegetable,
        S.instance!.mushroom.toLowerCase(): ProductType.mushroom,
        S.instance!.fruits.toLowerCase(): ProductType.fruit,
        S.instance!.nuts.toLowerCase(): ProductType.nuts,
        S.instance!.cereal.toLowerCase(): ProductType.cereal,
        S.instance!.berries.toLowerCase(): ProductType.berries,
        S.instance!.beans.toLowerCase(): ProductType.beans,
        S.instance!.oil.toLowerCase(): ProductType.oil,
        S.instance!.flourProducts.toLowerCase(): ProductType.flourProduct,
        S.instance!.sugarAndHoney.toLowerCase(): ProductType.sugarHoney,
        S.instance!.spices.toLowerCase(): ProductType.spices,
        S.instance!.alcohol.toLowerCase(): ProductType.alcohol,
        S.instance!.drinks.toLowerCase(): ProductType.drink,
        S.instance!.olives.toLowerCase(): ProductType.olives,
        S.instance!.driedFruits.toLowerCase(): ProductType.driedFruit,
        S.instance!.greens.toLowerCase(): ProductType.greens,
        S.instance!.confectionery.toLowerCase(): ProductType.confectionery,
        S.instance!.macaroni.toLowerCase(): ProductType.macaroni,
        S.instance!.cheese.toLowerCase(): ProductType.cheese,
        S.instance!.sauce.toLowerCase(): ProductType.sauce,
      }[productType.toLowerCase()] ??
       ProductType.unknown;
  }

  static Allergens? productTypeToAllergens(ProductType productType) => {
    ProductType.cereal : Allergens.gluten,
    ProductType.macaroni : Allergens.gluten,
    ProductType.flourProduct : Allergens.gluten,
    ProductType.egg : Allergens.egg,
    ProductType.fish : Allergens.fish,
    ProductType.dairy : Allergens.dairy,
    ProductType.nuts : Allergens.nuts,
    ProductType.beans : Allergens.beans,
    ProductType.seafood : Allergens.seafood,
  }[productType];
}