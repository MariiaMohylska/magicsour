import 'package:flutter/material.dart';
import 'package:magicsour/blocs/router/router_data.dart';
import 'package:magicsour/blocs/router/routing/pages/account_routing_page.dart';
import 'package:magicsour/blocs/router/routing/pages/favourites_routing_page.dart';
import 'package:magicsour/blocs/router/routing/pages/home_routing_page.dart';
import 'package:magicsour/blocs/router/routing/pages/log_in_routing_page.dart';
import 'package:magicsour/blocs/router/routing/pages/recipe_details_routing_page.dart';
import 'package:magicsour/blocs/router/routing/pages/result_routing_page.dart';
import 'package:magicsour/blocs/router/routing/pages/search_routing_page.dart';
import 'package:magicsour/blocs/router/routing/pages/shopping_list_routing_page.dart';
import 'package:magicsour/blocs/router/routing/pages/unknown_routing_page.dart';

extension RouteToDelegateExtension on RouterData {
  Page<Object> get routeToPage =>
      map(home: HomeRoutingPage.new,
          search: SearchRoutingPage.new,
          result: ResultRoutingPage.new,
          shoppingList: ShoppingListRoutingPage.new,
          account: AccountRoutingPage.new,
          recipeDetails: RecipeDetailsRoutingPage.new,
          logIn: LogInRoutingPage.new,
          favorites: FavoritesRoutingPage.new,
          unknown: UnknownRoutingPage.new);
}