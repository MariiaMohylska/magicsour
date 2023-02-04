import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:magicsour/blocs/bloc_factory.dart';
import 'package:magicsour/blocs/shopping_list/shopping_list_bloc.dart';
import 'package:magicsour/models/recipe/recipe_ingredient_model.dart';
import 'package:magicsour/models/product_type.dart';
import 'package:magicsour/models/shop_list_item.dart';
import 'package:magicsour/s_localization.dart';
import 'package:magicsour/ui_kit/common/frosted_glass.dart';
import 'package:magicsour/utils/mappers/measurement_mapper.dart';
import 'package:magicsour/utils/mappers/product_type_mapper.dart';

part 'ingredient_list_by_type.dart';

part 'shopping_ingredient_tile.dart';

class ShopListScreen extends StatefulWidget {
  final ShoppingListBloc shoppingListBloc = BlocFactory.shoppingListBloc;

  ShopListScreen({super.key});

  @override
  ShopListScreenState createState() => ShopListScreenState();
}

class ShopListScreenState extends State<ShopListScreen> {

  @override
  Widget build(BuildContext context) {
    List<ShopListItem> list = [];

    return BlocBuilder<ShoppingListBloc, ShoppingListState>(
      bloc: widget.shoppingListBloc,
      builder: (context, state) {
        if (state is ShoppingListLoadedState) {
          list = [...state.shoppingList];
        }

        if (list.isNotEmpty) {
          return SingleChildScrollView(
            child: Column(
              children: [
                _emptyListButton(),
                FrostedGlass(
                  padding: const EdgeInsets.symmetric(
                      vertical: 8.0, horizontal: 8.0),
                  child: Column(
                    children: [
                      ..._getTypes(list)
                          .map(
                            (e) => Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                _getTypeTitle(e),
                                _getIngredientsListByType(e, list),
                              ],
                            ),
                          )
                          .toList(),
                    ],
                  ),
                ),
              ],
            ),
          );
        } else {
          return Container();
        }
      },
    );
  }

  Widget _emptyListButton() {
    return FrostedGlass(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
      child: GestureDetector(
        onTap: () {
          widget.shoppingListBloc.add(const ShoppingListEvent.removeAllItems());
        },
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 8),
          child: Text(
            S.instance!.emptyShoppingList,
            style: const TextStyle(
              fontSize: 18,
            ),
          ),
        ),
      ),
    );
  }

  Set<ProductType> _getTypes(List<ShopListItem> ingredients) {
    Set<ProductType> types = {};
    for (var element in ingredients) {
      types.add(element.ingredient.ingredient.type);
    }
    return types;
  }

  Widget _getTypeTitle(ProductType type) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 4,
        vertical: 8,
      ),
      child: Text(
        ProductTypeMapper.productTypeToString(type),
        style: TextStyle(color: Colors.brown.shade800, fontSize: 22, shadows: [
          Shadow(
            color: Colors.brown.shade50,
            blurRadius: 15,
          )
        ]),
      ),
    );
  }

  Widget _getIngredientsListByType(ProductType type, List<ShopListItem> list) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 8),
      child: IngredientListByType(
        type: type,
        ingredients: list,
        shoppingListBloc: widget.shoppingListBloc,
        onDismissed: (removedIngredientModel) {
          setState(() {
          widget.shoppingListBloc.add(ShoppingListEvent.removeItem(
              removedIngredientModel: removedIngredientModel));
          });
        },
      ),
    );
  }
}
