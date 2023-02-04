import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:magicsour/blocs/router/routing/routes.dart';
import 'package:magicsour/models/recipe/recipe_model.dart';

part 'router_data.freezed.dart';

@freezed
class RouterData with _$RouterData {
  const RouterData._();

  const factory RouterData.home() = RouteHomeData;

  const factory RouterData.search() = RouteSearchData;

  const factory RouterData.result(List<RecipeModel>? result) = RouteResultData;

  const factory RouterData.shoppingList() = RouteShoppingListData;

  const factory RouterData.account() = RouteAccountData;

  const factory RouterData.recipeDetails(RecipeModel? dishModel) = RouteRecipeDetailsData;

  const factory RouterData.logIn() = RouteLogInData;

  const factory RouterData.favorites() = RouteFavoritesData;

  const factory RouterData.unknown() = RouteUnknownData;

  static final List<RouterData> initialStack = [
    const RouterData.home()
  ];

  String get route => map(
        home: (_) => Routes.home,
        search: (_) => Routes.search,
        result: (_) => Routes.result,
        shoppingList: (_) => Routes.shoppingList,
        account: (_) => Routes.account,
        recipeDetails: (_) => Routes.recipeDetails,
        logIn: (_) => Routes.logIn,
        favorites: (_) => Routes.favorites,
        unknown: (_) => Routes.unknown,
      );
}
