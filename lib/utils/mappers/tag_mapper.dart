import 'package:magicsour/models/tag.dart';
import 'package:magicsour/s_localization.dart';

class TagMapper {
  static String tagToString( Tag tag) {
    switch (tag) {
      case Tag.breakfast:
        return S.instance!.breakfast;
      case Tag.lunch:
        return S.instance!.lunch;
      case Tag.diner:
        return S.instance!.diner;
      case Tag.properNutrition:
        return S.instance!.healthyDiet;
      case Tag.lowCalories:
        return S.instance!.lowCalories;
      case Tag.nonAlcoholic:
        return S.instance!.nonAlcoholic;
      case Tag.alcoholic:
        return S.instance!.alcohol;
      case Tag.dessert:
        return S.instance!.dessert;
      case Tag.soup:
        return S.instance!.soup;
      case Tag.garnish:
        return S.instance!.garnish;
      case Tag.meat:
        return S.instance!.meat;
      case Tag.appertizer:
        return S.instance!.appertizer;
      case Tag.baking:
        return S.instance!.baking;
      case Tag.salad:
        return S.instance!.salad;
      case Tag.drinks:
        return S.instance!.drinks;
      case Tag.salty:
        return S.instance!.salty;
      case Tag.sweet:
        return S.instance!.sweet;
      case Tag.spicy:
        return S.instance!.spicy;
      case Tag.lean:
        return S.instance!.lean;
      case Tag.sauce:
        return S.instance!.sauce;
      case Tag.fish:
        return S.instance!.fish;
      case Tag.unknown:
        return S.instance!.unknown;
    }
  }

  static Tag tagFromString(String tag) =>
      {
        S.instance!.breakfast: Tag.breakfast,
        S.instance!.lunch: Tag.lunch,
        S.instance!.diner: Tag.diner,
        S.instance!.healthyDiet: Tag.properNutrition,
        S.instance!.lowCalories: Tag.lowCalories,
        S.instance!.nonAlcoholic: Tag.nonAlcoholic,
        S.instance!.alcohol: Tag.alcoholic,
        S.instance!.dessert: Tag.dessert,
        S.instance!.soup: Tag.soup,
        S.instance!.garnish: Tag.garnish,
        S.instance!.meat: Tag.meat,
        S.instance!.appertizer: Tag.appertizer,
        S.instance!.baking: Tag.baking,
        S.instance!.salad: Tag.salad,
        S.instance!.drinks: Tag.drinks,
        S.instance!.salty: Tag.salty,
        S.instance!.sweet: Tag.sweet,
        S.instance!.spicy: Tag.spicy,
        S.instance!.lean: Tag.lean,
        S.instance!.sauce: Tag.sauce,
        S.instance!.fish: Tag.fish,
      }[tag] ??
          Tag.unknown;
}