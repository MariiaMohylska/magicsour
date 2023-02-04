import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:magicsour/models/recipe/recipe_model.dart';
import 'package:magicsour/models/ingredient.dart';
import 'package:magicsour/repositories/account/account_repository.dart';
import 'package:magicsour/repositories/recipe/recipe_repository.dart';
import 'package:magicsour/s_localization.dart';

part 'recipe_bloc.freezed.dart';

part 'recipe_event.dart';

part 'recipe_state.dart';

class RecipeBloc extends Bloc<RecipeEvent, RecipeState> {
  final RecipeRepository _recipeRepository;
  late final FirebaseFirestore _firebaseFirestore;
  final AccountRepository _accountRepository;

  RecipeBloc(
      {required RecipeRepository recipeRepository,
      required AccountRepository accountRepository})
      : _recipeRepository = recipeRepository,
        _accountRepository = accountRepository,
        super(const RecipeState.loading()) {
    _firebaseFirestore = FirebaseFirestore.instance;
    on<_RecipeFetchEvent>(_fetch);
    on<_RecipeUpdateListEvent>(_updateRecipesList);

    _accountRepository.profileStream.listen((event) {
      add(RecipeEvent.updateRecipeList(isLoggedIn: event != null));
    });
  }

  void _updateRecipesList(
      _RecipeUpdateListEvent event, Emitter<RecipeState> emit) async {
    emit(RecipeState.fetched(event.isLoggedIn
        ? _recipeRepository.getFiltratedList(
            restrictedProducts: _accountRepository.profile!.restrictedProducts,
            allergens: _accountRepository.profile!.allergens,
          )
        : _recipeRepository.recipesList));
  }

  void _fetch(RecipeEvent event, Emitter<RecipeState> emit) async {
    await _initIngredientMap();
    await _initRecipes();

    emit(RecipeState.fetched(_accountRepository.profile != null
        ? _recipeRepository.getFiltratedList(
            restrictedProducts: _accountRepository.profile!.restrictedProducts,
            allergens: _accountRepository.profile!.allergens,
          )
        : _recipeRepository.recipesList));
  }

  Future<void> _initIngredientMap() async {
    CollectionReference reference = _firebaseFirestore.collection('content');

    final collection = await reference
        .doc(S.instance!.localeName)
        .collection('ingredients')
        .get();

    final ingredientsList = collection.docs
        .map((doc) => Ingredient.fromJson(doc.data(), doc.id))
        .toList();

    _recipeRepository.setIngredientMap = ingredientsList;
  }

  Future<void> _initRecipes() async {
    CollectionReference reference = _firebaseFirestore.collection('content');

    final collection = await reference
        .doc(S.instance!.localeName)
        .collection('recipies')
        .get();

    final recipesList = collection.docs
        .map((doc) => RecipeModel.fromJson(
            doc.data(), _recipeRepository.getIngredientMapFromList))
        .toList();

    _recipeRepository.setRecipesList = recipesList;
  }
}
