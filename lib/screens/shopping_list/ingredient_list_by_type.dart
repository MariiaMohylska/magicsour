part of 'shop_list_screen.dart';

class IngredientListByType extends StatefulWidget {
  final Function(RecipeIngredientModel removed) onDismissed;
  final ProductType type;
  final List<ShopListItem> ingredients;
  final ShoppingListBloc shoppingListBloc;

  const IngredientListByType(
      {super.key,
      required this.type,
      required this.ingredients,
      required this.onDismissed,
      required this.shoppingListBloc});

  @override
  IngredientListByTypeState createState() => IngredientListByTypeState();
}

class IngredientListByTypeState extends State<IngredientListByType> {
  @override
  Widget build(BuildContext context) {
    List<ShopListItem> fitType = [];

    for (var element in widget.ingredients) {
      if (element.ingredient.ingredient.type == widget.type) {
        fitType.add(element);
      }
    }

    if (fitType.isEmpty) {
      return Container();
    }
    return Column(
      children: [
        ...fitType.map(
          (e) => ShoppingIngredientTile(
              shoppingListItem: e, onDismissed: widget.onDismissed),
        )
      ],
    );
  }
}
