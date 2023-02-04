import 'dart:math';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:magicsour/blocs/router/router_bloc.dart';
import 'package:magicsour/blocs/router/router_data.dart';
import 'package:magicsour/models/allergens.dart';
import 'package:magicsour/models/ingredient.dart';
import 'package:magicsour/models/product_type.dart';
import 'package:magicsour/models/recipe/recipe_model.dart';
import 'package:magicsour/models/search/search_details.dart';
import 'package:magicsour/models/search/search_parameters_model.dart';
import 'package:magicsour/models/selectable_model.dart';
import 'package:magicsour/models/tag.dart';
import 'package:magicsour/repositories/account/account_repository.dart';
import 'package:magicsour/repositories/recipe/recipe_repository.dart';

part 'search_bloc.freezed.dart';

part 'search_event.dart';

part 'search_state.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final RouterBloc routerBloc;
  final AccountRepository _accountRepository;
  final RecipeRepository _recipeRepository;
  static const double _defaultCalories = 320;
  static const double  _defaultCookingTime = 4800;
  late SearchParametersModel _defaultSearchParametersModel;


  SearchBloc({
    required this.routerBloc,
    required AccountRepository accountRepository,
    required RecipeRepository recipeRepository,
  })  : _accountRepository = accountRepository,
        _recipeRepository = recipeRepository,
        super(
          SearchState.search(
            searchParametersModel: SearchParametersModel(
              minCookingTime: recipeRepository.minTime,
              defaultCookingTime: _defaultCookingTime,
              maxCookingTime: recipeRepository.maxTime,
              minCalories: recipeRepository.minCalories,
              defaultCalories: _defaultCalories,
              maxCalories: recipeRepository.maxCalories,
              allergensList: [],
              restrictedProducts: {},
            ),
          ),
        ) {
    on<_SearchSearchEvent>(_search);
    on<_SearchToGenerateEvent>(_changeToGenerate);
    on<_SearchToSearchEvent>(_changeToSearch);

    _defaultSearchParametersModel = SearchParametersModel(
      minCookingTime: _recipeRepository.minTime,
      defaultCookingTime: _defaultCookingTime,
      maxCookingTime: _recipeRepository.maxTime,
      minCalories: _recipeRepository.minCalories,
      defaultCalories: _defaultCalories,
      maxCalories: _recipeRepository.maxCalories,
      allergensList: Allergens.values,
      restrictedProducts: _getRestrictedProductsMap(),
    );

    add(const SearchEvent.changeToSearch());
  }

  Map<SelectableModel<ProductType>, List<SelectableModel<Ingredient>>>
      _getRestrictedProductsMap() {
    final Map<SelectableModel<ProductType>, List<SelectableModel<Ingredient>>>
        restrictedProductsMap = {};

    for (var type in ProductType.values) {
      List<SelectableModel<Ingredient>> ingredientsList = _recipeRepository
          .ingredientList
          .where((ingredient) => ingredient.type == type)
          .map((ingredient) => ingredient.selectableModel(false))
          .toList();
      if (ingredientsList.isNotEmpty) {
        restrictedProductsMap
            .addAll({type.selectableModel(false): ingredientsList});
      }
    }

    return restrictedProductsMap;
  }

  void _changeToSearch(SearchEvent event, Emitter<SearchState> emit) {
    emit(
      SearchState.search(
        searchParametersModel: SearchParametersModel(
          minCookingTime: _recipeRepository.minTime,
          defaultCookingTime: _defaultCookingTime,
          maxCookingTime: _recipeRepository.maxTime,
          minCalories: _recipeRepository.minCalories,
          defaultCalories: _defaultCalories,
          maxCalories: _recipeRepository.maxCalories,
          allergensList: Allergens.values,
          restrictedProducts: _getRestrictedProductsMap(),
        ),
      ),
    );
  }

  void _changeToGenerate(SearchEvent event, Emitter<SearchState> emit) {
    emit(
      SearchState.generate(
        searchParametersModel: _defaultSearchParametersModel,
      ),
    );
  }

  void _search(SearchEvent event, Emitter<SearchState> emit) {
    final SearchDetailsModel detailsModel =
        (event as _SearchSearchEvent).details;

    final restrictedProducts =
        _getRestrictedProductFromMap(detailsModel.restrictedProducts);

    final result = _getSearchResult(
      name: detailsModel.name,
      restrictedProduct: restrictedProducts,
      tags: detailsModel.tags,
      allergens: detailsModel.allergens,
      calories: detailsModel.calories,
      timeInSec: detailsModel.time,
      notUsePersonal: !detailsModel.usePersonal,
      isGenerate: detailsModel.isGenerate,
    );

    routerBloc.add(RouterEvent.push(data: RouterData.result(result)));

    SearchState newState = state;

    if(state is SearchSearchState) {
      newState = SearchState.search(searchParametersModel: _defaultSearchParametersModel);
    } else if (state is SearchGenerateState) {
      newState = SearchState.generate(searchParametersModel: _defaultSearchParametersModel);
    }

    emit(newState);
  }

  List<Ingredient> _getRestrictedProductFromMap(
      Map<SelectableModel<ProductType>, List<SelectableModel<Ingredient>>>
          restrictedProductMap) {
    final List<Ingredient> ingredientList = [];

    restrictedProductMap.forEach((key, value) {
      ingredientList.addAll(value.getSelectedList);
    });

    return ingredientList;
  }

  List<RecipeModel> _getSearchResult({
    required String name,
    required List<Ingredient> restrictedProduct,
    double timeInSec = 0,
    List<Tag>? tags,
    List<Allergens>? allergens,
    double? calories,
    bool notUsePersonal = false,
    bool isGenerate = false,
  }) {
    List<RecipeModel> fullRecipesList = [..._recipeRepository.recipesList];

    // Search by name
    List<RecipeModel> resultRecipesList = name.isEmpty
        ? [...fullRecipesList]
        : _searchByName(name, fullRecipesList);

    // Filtrating recipes by calories
    if (calories != null) {
      resultRecipesList
          .removeWhere((element) => element.nutrition.calories > calories);
    }

    // Filtrating recipes by time
    resultRecipesList
        .removeWhere((element) => element.timeInSecond > timeInSec);

    // Filtrating recipes by tags
    if (tags != null && tags.isNotEmpty) {
      resultRecipesList.removeWhere((recipe) =>
          _compareTags(selectedTags: tags, recipeTags: recipe.tags));
    }

    // Getting combined list of allergens from search filter and account settings
    final fullAllergensList =
        _getFullAllergensList(allergens ?? [], notUsePersonal);

    // Getting combined list of restricted products from search filter and account settings
    final fullRestrictedProduct =
        _getFullRestrictedProductsList(restrictedProduct, notUsePersonal);

    // Filtrating recipes by allergens and restricted products
    resultRecipesList = _recipeRepository.getFiltratedList(
        list: resultRecipesList,
        restrictedProducts: fullRestrictedProduct,
        allergens: fullAllergensList);

    // Get 3 random recipes if it was Generate tab or return whole result
    return isGenerate
        ? _generateFromResultList(resultRecipesList)
        : resultRecipesList;
  }

  List<RecipeModel> _generateFromResultList(List<RecipeModel> recipeList) {
    final random = Random();
    final List<RecipeModel> randomResult =
        _randomResult(recipeList, [], random);

    return randomResult;
  }

  List<RecipeModel> _randomResult(List<RecipeModel> recipeList,
      List<RecipeModel> randomResult, Random random) {
    if (recipeList.isNotEmpty && randomResult.length < 3) {
      final randomElement = recipeList[random.nextInt(recipeList.length)];
      recipeList.remove(randomElement);
      randomResult.add(randomElement);
      randomResult = _randomResult(recipeList, randomResult, random);
    }

    return randomResult;
  }

  List<RecipeModel> _searchByName(String name, List<RecipeModel> recipes) {
    List<RecipeModel> result = [];
    final dividedName = name.split(' ');

    for (var recipe in recipes) {
      int wordsContained = 0;

      for (var word in dividedName) {
        if (word.length > 2 &&
            recipe.name.toLowerCase().contains(word.toLowerCase())) {
          wordsContained++;
        }
      }
      if (wordsContained > 0) result.add(recipe);
    }

    return result;
  }

  bool _compareTags({
    required List<Tag> recipeTags,
    required List<Tag> selectedTags,
  }) {
    int tagContained = 0;

    for (var customTag in selectedTags) {
      if (recipeTags.contains(customTag)) {
        tagContained++;
      }
    }

    return tagContained == 0;
  }

  List<Allergens> _getFullAllergensList(
      List<Allergens> allergensList, bool notUsePersonal) {
    final profile = _accountRepository.profile;

    if (!notUsePersonal && profile != null) {
      allergensList.addAll(profile.allergens);
    }

    return allergensList;
  }

  List<Ingredient> _getFullRestrictedProductsList(
      List<Ingredient> restrictedProducts, bool notUsePersonal) {
    final profile = _accountRepository.profile;

    if (!notUsePersonal && profile != null) {
      restrictedProducts.addAll(profile.restrictedProducts);
    }

    return restrictedProducts;
  }
}
