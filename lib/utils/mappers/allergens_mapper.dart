import 'package:magicsour/models/allergens.dart';
import 'package:magicsour/s_localization.dart';

class AllergensMapper {
  static String allergensToString(Allergens? allergens) {
    if(allergens != null) {
      switch (allergens) {
        case Allergens.gluten:
          return S.instance!.gluten;
        case Allergens.crustaceans:
          return S.instance!.crustaceans;
        case Allergens.egg:
          return S.instance!.eggs;
        case Allergens.fish:
          return S.instance!.fish;
        case Allergens.peanut:
          return S.instance!.peanut;
        case Allergens.soy:
          return S.instance!.soy;
        case Allergens.dairy:
          return S.instance!.dairyProducts;
        case Allergens.nuts:
          return S.instance!.nuts;
        case Allergens.celery:
          return S.instance!.celery;
        case Allergens.mustard:
          return S.instance!.mustard;
        case Allergens.sesame:
          return S.instance!.sesame;
        case Allergens.mollusc:
          return S.instance!.mollusc;
        case Allergens.lupine:
          return S.instance!.lupine;
        case Allergens.beans:
          return S.instance!.beans;
        case Allergens.seafood:
          return S.instance!.seafood;
        case Allergens.mushroom:
          return S.instance!.mushroom;
      }
    } else {
      return '';
    }
  }

  static Allergens? allergensFromString(
      String allergens) =>
      {
        S.instance!.gluten: Allergens.gluten,
        S.instance!.crustaceans: Allergens.crustaceans,
        S.instance!.eggs: Allergens.egg,
        S.instance!.fish: Allergens.fish,
        S.instance!.peanut: Allergens.peanut,
        S.instance!.soy: Allergens.soy,
        S.instance!.dairyProducts: Allergens.dairy,
        S.instance!.nuts: Allergens.nuts,
        S.instance!.celery: Allergens.celery,
        S.instance!.mustard: Allergens.mustard,
        S.instance!.sesame: Allergens.sesame,
        S.instance!.mollusc: Allergens.mollusc,
        S.instance!.lupine: Allergens.lupine,
        S.instance!.beans: Allergens.beans,
        S.instance!.seafood : Allergens.seafood,
        S.instance!.mushroom: Allergens.mushroom,
      }[allergens];
}
