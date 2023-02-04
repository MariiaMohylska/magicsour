import 'package:magicsour/blocs/account/account_bloc.dart';
import 'package:magicsour/blocs/favorites/favorite_mediator.dart';
import 'package:magicsour/blocs/favorites/favorites_bloc.dart';
import 'package:magicsour/blocs/recipe/recipe_bloc.dart';
import 'package:magicsour/blocs/navigation/navigation_bloc.dart';
import 'package:magicsour/blocs/router/router_bloc.dart';
import 'package:magicsour/blocs/search/search_bloc.dart';
import 'package:magicsour/blocs/shopping_list/shopping_list_bloc.dart';
import 'package:magicsour/repositories/account/account_repository.dart';
import 'package:magicsour/repositories/recipe/recipe_repository.dart';
import 'package:magicsour/repositories/navigation/navigation_repository.dart';
import 'package:magicsour/repositories/shopping_list/shopping_list_repository.dart';

class BlocFactory {
  static final FavoriteMediator favoriteMediator = FavoriteMediator();

  static final NavigationRepository navigationRepository =
      NavigationRepository();

  static final ShoppingListRepository shoppingListRepository =
      ShoppingListRepository();

  static final RecipeRepository recipeRepository = RecipeRepository();

  static final AccountRepository accountRepository =
      AccountRepository(homeRepository: recipeRepository);

  static final AccountBloc accountBloc = AccountBloc(
    accountRepository: accountRepository,
    favoriteMediator: favoriteMediator,
    recipeRepository: recipeRepository,
  );

  static final FavoritesBloc favoritesBloc = FavoritesBloc(
    homeRepository: recipeRepository,
    accountRepository: accountRepository,
    favoriteMediator: favoriteMediator,
  );

  static final RecipeBloc homeBloc =
      RecipeBloc(recipeRepository: recipeRepository,
        accountRepository: accountRepository,);

  static final RouterBloc routerBloc = RouterBloc();

  static final NavigationBloc navigationBloc = NavigationBloc(
      navigationRepository: navigationRepository, routerBloc: routerBloc);

  static final SearchBloc searchBloc = SearchBloc(
    routerBloc: routerBloc,
    accountRepository: accountRepository,
    recipeRepository: recipeRepository,
  );

  static final ShoppingListBloc shoppingListBloc = ShoppingListBloc(
    shoppingListRepository: shoppingListRepository,
  );
}
