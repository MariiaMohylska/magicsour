import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:magicsour/blocs/favorites/favorite_mediator.dart';
import 'package:magicsour/models/recipe/recipe_model.dart';
import 'package:magicsour/repositories/account/account_repository.dart';
import 'package:magicsour/repositories/recipe/recipe_repository.dart';

part 'favorites_event.dart';

part 'favorites_state.dart';

part 'favorites_bloc.freezed.dart';

class FavoritesBloc extends Bloc<FavoritesEvent, FavoritesState> {
  final RecipeRepository _homeRepository;
  final AccountRepository _accountRepository;
  final FavoriteMediator _favoriteMediator;

  FavoritesBloc({
    required RecipeRepository homeRepository,
    required AccountRepository accountRepository,
    required FavoriteMediator favoriteMediator,
  })  : _homeRepository = homeRepository,
        _accountRepository = accountRepository,
        _favoriteMediator = favoriteMediator,
        super(const FavoritesState.fetched(favoritesRecipes: [])) {
    on<_FavoritesLoadFromCacheEvent>(_loadFromCache);
    on<_FavoritesUpdateStatusEvent>(_updateStatus);

    _favoriteMediator.linearPlaybackItem.listen((value) {
      emit(FavoritesState.fetched(favoritesRecipes: _getRecipesListById(value)));
    });
  }

  void _loadFromCache(
      _FavoritesLoadFromCacheEvent event, Emitter<FavoritesState> emit) {
    //TODO: Load from cache
    emit(state);
  }

  void _updateStatus(
      _FavoritesUpdateStatusEvent event, Emitter<FavoritesState> emit) {
    if (_accountRepository.profile!.favorites.contains(event.id)) {
      _accountRepository.profile!.favorites.remove(event.id);
    } else {
      _accountRepository.profile!.favorites.add(event.id);
    }

    _favoriteMediator.updateFavoritesList(_accountRepository.profile!.favorites);

    emit(FavoritesState.fetched(favoritesRecipes: _getRecipesListById(_accountRepository.profile!.favorites)));
  }

  List<RecipeModel> _getRecipesListById(List<String> idList) {
    final list = _homeRepository.recipesList
        .where((element) =>
            idList.contains(element.id))
        .toList();

    return list;
  }
}
