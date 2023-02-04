import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:magicsour/blocs/account/account_bloc.dart';
import 'package:magicsour/blocs/bloc_factory.dart';
import 'package:magicsour/blocs/favorites/favorites_bloc.dart';
import 'package:magicsour/models/recipe/recipe_model.dart';
import 'package:magicsour/screens/log_in_screen.dart';
import 'package:magicsour/ui_kit/recipe_cards/recipe_card_mini.dart';

class FavouritesScreen extends StatefulWidget {
  final AccountBloc accountBloc = BlocFactory.accountBloc;
  final FavoritesBloc favoritesBloc = BlocFactory.favoritesBloc;

  FavouritesScreen({super.key});

  @override
  FavouritesScreenState createState() => FavouritesScreenState();
}

class FavouritesScreenState extends State<FavouritesScreen> {
  List<RecipeModel> recipes = [];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
      bloc: widget.accountBloc,
      builder: (context, accountState) {
        if(accountState is AccountLoggedInState) {
          return BlocBuilder(
              bloc: widget.favoritesBloc,
              builder: (context, favoritesState) {
                recipes =
                    (favoritesState as FavoritesInitialState).favoritesRecipes;
                return ListView.builder(
                  itemBuilder: (context, id) =>
                      RecipeCardMini(
                        dish: recipes[id],
                      ),
                  scrollDirection: Axis.vertical,
                  itemCount: recipes.length,
                );
              }
          );
        } else {
          return LogInScreen(accountBloc: widget.accountBloc);
        }
      }
    );
  }
}
