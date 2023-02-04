import 'package:magicsour/blocs/router/router_data.dart';

class Routes {
  static const home = 'home';
  static const search = 'search';
  static const result = 'result';
  static const shoppingList = 'shoppingList';
  static const account = 'account';
  static const recipeDetails = 'recipeDetails';
  static const logIn = 'logIn';
  static const fridge = 'fridge';
  static const favorites = 'favorites';
  static const unknown = 'unknown';

  static RouterData getRoute(String path) =>
      {
        home.toLowerCase(): const RouterData.home(),
        search.toLowerCase(): const RouterData.search(),
        result.toLowerCase(): const RouterData.result([]),
        shoppingList.toLowerCase(): const RouterData.shoppingList(),
        account.toLowerCase(): const RouterData.account(),
        recipeDetails.toLowerCase(): const RouterData.recipeDetails(null),
        logIn.toLowerCase(): const RouterData.logIn(),
        favorites.toLowerCase(): const RouterData.favorites(),
      }[path.toLowerCase()] ??
      const RouterData.unknown();
}
