import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:magicsour/blocs/bloc_factory.dart';
import 'package:magicsour/blocs/shopping_list/shopping_list_bloc.dart';
import 'package:magicsour/models/recipe/recipe_ingredient_model.dart';
import 'package:magicsour/models/selectable_model.dart';
import 'package:magicsour/s_localization.dart';
import 'package:magicsour/ui_kit/common/app_colors.dart';
import 'package:magicsour/ui_kit/common/frosted_glass.dart';
import 'package:magicsour/utils/mappers/measurement_mapper.dart';

class IngredientsList extends StatefulWidget {
  final List<SelectableModel<RecipeIngredientModel>> ingredients;
  final ShoppingListBloc shoppingListBloc = BlocFactory.shoppingListBloc;

  IngredientsList({
    required List<RecipeIngredientModel> ingredients,
    super.key,
  }) : ingredients = ingredients.toSelectableList(true);

  @override
  IngredientsListState createState() => IngredientsListState();
}

class IngredientsListState extends State<IngredientsList> {
  final TextStyle ingredientTextStyle =
      TextStyle(color: Colors.brown.shade800, fontSize: 18);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ShoppingListBloc, ShoppingListState>(
        bloc: widget.shoppingListBloc,
        builder: (context, state) => FrostedGlass(
            padding:
                const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _getTitle(),
                Column(
                  children: [
                    CheckboxListTile(
                      title: Text(S.instance!.selectAll),
                      value: widget.ingredients.isAllSelected,
                      onChanged: (isSelected) => setState(() {
                        widget.ingredients
                            .onSelectAllTapped(isSelected ?? false);
                      }),
                    ),
                    ...widget.ingredients
                        .map((ingredient) => _getIngredientRow(ingredient)),
                    const SizedBox(
                      height: 25,
                    ),
                    _button(
                        text: S.instance!.addAllToShoppingList,
                        onTap: () {
                          final List<RecipeIngredientModel> selected = [];
                          for (var e in widget.ingredients) {
                            if (e.isSelected) {
                              selected.add(e.model);
                              e.isSelected = false;
                            }
                          }
                          setState(() {
                            widget.shoppingListBloc.add(
                                ShoppingListEvent.addSelectedItems(
                                    addedIngredientModel: selected));
                          });
                        }),
                  ],
                ),
              ],
            )));
  }

  Widget _getTitle() {
    return Text(
      S.instance!.ingredients,
      style: TextStyle(color: Colors.brown.shade800, fontSize: 25, shadows: [
        Shadow(
          color: Colors.brown.shade50,
          blurRadius: 15,
        )
      ]),
    );
  }

  Widget _getIngredientRow(SelectableModel ingredient) {
    return Column(
      children: [
        CheckboxListTile(
          title: Wrap(
            alignment: WrapAlignment.spaceBetween,
            children: [
              Text(
                '${ingredient.model.count.toInt()} '
                '${MeasurementMapper.measurementToString(ingredient.model.measure)}',
                style: ingredientTextStyle,
              ),
              Text(
                ingredient.model.ingredient.name,
                style: ingredientTextStyle,
              ),
            ],
          ),
          value: ingredient.isSelected,
          onChanged: (value) {
            setState(() {
              ingredient.isSelected = value ?? false;
            });
          },
        ),
        Divider(
          color: Colors.brown.shade500.withOpacity(0.6),
        )
      ],
    );
  }

  Widget _button({required String text, required Function() onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(25)),
        child: Container(
          alignment: Alignment.center,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: AppColors.mainGradient, begin: Alignment.topCenter),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              text,
              style: TextStyle(
                color: Colors.brown.shade50,
                fontSize: 18,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
