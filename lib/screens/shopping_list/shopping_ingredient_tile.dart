part of 'shop_list_screen.dart';

class ShoppingIngredientTile extends StatefulWidget {
  final ShopListItem shoppingListItem;
  final Function(RecipeIngredientModel removed) onDismissed;

  const ShoppingIngredientTile({
    required this.shoppingListItem,
    required this.onDismissed,
    super.key,
  });

  @override
  ShoppingIngredientTileState createState() => ShoppingIngredientTileState();
}

class ShoppingIngredientTileState extends State<ShoppingIngredientTile> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          trailing: GestureDetector(
              onTap: () {
                setState(() {
                  widget.onDismissed(widget.shoppingListItem.ingredient);
                });
              },
              child: const Icon(Icons.delete_outline)),
          title: GestureDetector(
            onTap: () {
              setState(() {
                widget.shoppingListItem.unavailable =
                    !widget.shoppingListItem.unavailable;
              });
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  widget.shoppingListItem.ingredient.ingredient.name,
                  style: _getTextStyle(),
                ),
                Text(
                  '${widget.shoppingListItem.amount} ${MeasurementMapper.measurementToString(widget.shoppingListItem.measure)}',
                  style: _getTextStyle(),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Container(
            height: 1,
            color: Colors.brown.withOpacity(0.5),
          ),
        ),
      ],
    );
  }

  TextStyle _getTextStyle() => TextStyle(
        color: widget.shoppingListItem.unavailable
            ? Colors.brown.shade800
            : Colors.grey.shade700,
        fontSize: 16,
        decoration: !widget.shoppingListItem.unavailable
            ? TextDecoration.lineThrough
            : null,
      );
}
