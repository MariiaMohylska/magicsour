import 'package:flutter/material.dart';
import 'package:magicsour/blocs/bloc_factory.dart';
import 'package:magicsour/blocs/router/router_bloc.dart';
import 'package:magicsour/blocs/router/router_data.dart';
import 'package:magicsour/models/recipe/recipe_model.dart';
import 'package:magicsour/s_localization.dart';
import 'package:magicsour/ui_kit/common/frosted_glass.dart';
import 'package:magicsour/ui_kit/recipe_cards/favourite_button.dart';
import 'package:magicsour/ui_kit/common/tag_container.dart';
import 'package:magicsour/utils/mappers/complexity_mapper.dart';
import 'package:magicsour/utils/utils.dart';

class RecipeCardMini extends StatefulWidget {
  final RecipeModel dish;
  final RouterBloc routerBloc = BlocFactory.routerBloc;

  RecipeCardMini({super.key, required this.dish});

  @override
  RecipeCardMiniState createState() => RecipeCardMiniState();
}

class RecipeCardMiniState extends State<RecipeCardMini> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.routerBloc
            .add(RouterEvent.push(data: RouterData.recipeDetails(widget.dish)));
      },
      child: Container(
          padding: const EdgeInsets.all(12),
          alignment: Alignment.center,
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 32.0, left: 30.0),
                child: FrostedGlass(
                  width: 500.0,
                  borderRadius: 25.0,
                  child: _shortInfo(),
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100.0),
                  child: SizedBox(
                    height: 125,
                    width: 125,
                    child: Image.network(
                        widget.dish.image ??
                            "https://uploads-ssl.webflow.com/602250ed045ee75512d753ec/61b070ee9a5eb922c40e3325_food-trivia.jpeg",
                        fit: BoxFit.cover),
                  ),
                ),
              ),
            ],
          )),
    );
  }

  Widget _shortInfo() {
    return Padding(
      padding: const EdgeInsets.only(top: 12, bottom: 18, left: 78, right: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Wrap(
            alignment: WrapAlignment.center,
            children: [
              TagContainer(
                title: Utils.durationToString(widget.dish.timeInSecond),
                width: 100,
              ),
              const SizedBox(
                width: 5,
              ),
              TagContainer(
                  title: ComplexityMapper.complexityToString(
                      widget.dish.complexity),
                  width: 100),
              const SizedBox(
                width: 5,
              ),
              TagContainer(
                title:
                    '${widget.dish.nutrition.calories.toInt()} ${S.instance!.calories}',
                width: 105,
              )
            ],
          ),
          const SizedBox(
            height: 24,
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
              )
            ],
          ),
          Align(alignment:Alignment.bottomRight,child: FavouriteButton(dishId: widget.dish.id,)),
        ],
      ),
    );
  }
}
