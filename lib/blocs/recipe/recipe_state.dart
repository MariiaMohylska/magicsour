part of 'recipe_bloc.dart';

@freezed
class RecipeState with _$RecipeState {
  const factory RecipeState.loading() = RecipeLoadingState;
  const factory RecipeState.fetched(List<RecipeModel> recipes) = RecipeFetchedState;
}
