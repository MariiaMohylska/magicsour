part of 'recipe_bloc.dart';

@freezed
class RecipeEvent with _$RecipeEvent{
  const factory RecipeEvent.fetch() = _RecipeFetchEvent;
  const factory RecipeEvent.updateRecipeList({required bool isLoggedIn}) = _RecipeUpdateListEvent;
}