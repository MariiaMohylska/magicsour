import 'package:flutter/material.dart';
import 'package:magicsour/blocs/bloc_factory.dart';
import 'package:magicsour/blocs/router/router_bloc.dart';
import 'package:magicsour/blocs/router/router_data.dart';
import 'package:magicsour/models/recipe/recipe_model.dart';
import 'package:magicsour/s_localization.dart';
import 'package:magicsour/ui_kit/common/frosted_glass.dart';
import 'package:magicsour/ui_kit/common/tag_container.dart';
import 'package:magicsour/ui_kit/recipe_cards/favourite_button.dart';
import 'package:magicsour/utils/mappers/complexity_mapper.dart';
import 'package:magicsour/utils/utils.dart';

class RecipeCard extends StatefulWidget {
  final RecipeModel dish;
  final RouterBloc routerBloc = BlocFactory.routerBloc;

  RecipeCard({super.key, required this.dish});

  @override
  RecipeCardState createState() => RecipeCardState();
}

class RecipeCardState extends State<RecipeCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.routerBloc
            .add(RouterEvent.push(data: RouterData.recipeDetails(widget.dish)));
      },
      child: Container(
          padding:
              const EdgeInsets.only(top: 16, left: 8, right: 16, bottom: 35),
          alignment: Alignment.center,
          child: Stack(
            children: [
              FrostedGlass(
                width: 350.0,
                borderRadius: 25.0,
                padding: const EdgeInsets.only(top: 24.0, left: 32.0),
                child: _shortInfo(context),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(150.0),
                  child: SizedBox(
                    height: 225,
                    width: 225,
                    child: Image.network(
                        widget.dish.image ??
                            "https://www.acouplecooks.com/wp-content/uploads/2021/04/Breakfast-Skillet-017.jpg",
                        fit: BoxFit.cover),
                  ),
                ),
              ),
            ],
          )),
    );
  }

  Widget _shortInfo(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              TagContainer(
                  title: Utils.durationToString(widget.dish.timeInSecond)),
              TagContainer(
                title:
                    ComplexityMapper.complexityToString(widget.dish.complexity),
              ),
              TagContainer(
                title:
                    '${widget.dish.nutrition.calories.toInt()} ${S.instance!.calories}',
              )
            ],
          ),
          const SizedBox(
            height: 35,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.dish.name,
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w700),
              ),
              const SizedBox(
                height: 12,
              ),
              Text(
                widget.dish.description,
                style: const TextStyle(
                    color: Colors.black, fontSize: 12, letterSpacing: 1),
              ),
              FavouriteButton(
                dishId: widget.dish.id,
              )
            ],
          ),
        ],
      ),
    );
  }
}
