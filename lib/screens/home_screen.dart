import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:magicsour/blocs/bloc_factory.dart';
import 'package:magicsour/blocs/recipe/recipe_bloc.dart';
import 'package:magicsour/models/recipe/recipe_model.dart';
import 'package:magicsour/ui_kit/recipe_cards/recipe_card_mini.dart';
import 'package:magicsour/ui_kit/recipe_cards/recipe_card_mini_loading.dart';

class HomeScreen extends StatefulWidget {
  final RecipeBloc homeBloc = BlocFactory.homeBloc;

  HomeScreen({super.key});

  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  List<RecipeModel> recipesList = [];

  @override
  void initState() {
    super.initState();
    if(widget.homeBloc.state is RecipeLoadingState) {
      widget.homeBloc.add(const RecipeEvent.fetch());
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
      bloc: widget.homeBloc,
      builder: (context, state) {
        if (state is RecipeFetchedState) {
          recipesList = state.recipes;
          return ListView.builder(
            itemBuilder: (context, id) => RecipeCardMini(
              dish: recipesList[id],
            ),
            scrollDirection: Axis.vertical,
            itemCount: recipesList.length,
          );
        } else {
          return ListView.builder(
            itemBuilder: (context, id) => const RecipeCardMiniLoading(),
            itemCount: 10,
          );
        }
      },
    );
  }
}
