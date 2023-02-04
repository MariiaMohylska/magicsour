import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:magicsour/models/recipe/recipe_ingredient_model.dart';
import 'package:magicsour/models/shop_list_item.dart';
import 'package:magicsour/repositories/shopping_list/shopping_list_repository.dart';

part 'shopping_list_bloc.freezed.dart';

part 'shopping_list_event.dart';

part 'shopping_list_state.dart';

class ShoppingListBloc extends Bloc<ShoppingListEvent, ShoppingListState> {
  final ShoppingListRepository shoppingListRepository;

  ShoppingListBloc({required this.shoppingListRepository})
      : super(const ShoppingListState.loading()) {
    on<_ShoppingListAddSelectedItemsEvent>(_addItem);
    on<_ShoppingListRemoveItemEvent>(_removeItem);
    on<_ShoppingListRemoveAllItemsEvent>(_removeAllItems);
  }

  void _addItem(
      _ShoppingListAddSelectedItemsEvent event, Emitter<ShoppingListState> emit) {
    final list = shoppingListRepository.shoppingList;

    for (var newIngredient in event.addedIngredientModel) {
      bool ingredientIsNew = true;
      for (var shopListIngredient in list) {
        if (shopListIngredient.ingredient.ingredient.name ==
            newIngredient.ingredient.name) {
          shopListIngredient.amount += newIngredient.count.toInt();
          ingredientIsNew = false;
        }
      }

      if (ingredientIsNew) {
        list.add(ShopListItem(
            ingredient: newIngredient,
            amount: newIngredient.count.toInt(),
            unavailable: true));
      }
    }
    shoppingListRepository.changeShoppingList(list);

    emit(ShoppingListState.loaded(shoppingListRepository.shoppingList));
  }

  void _removeItem(
      _ShoppingListRemoveItemEvent event, Emitter<ShoppingListState> emit) {
    final List<ShopListItem> list = shoppingListRepository.shoppingList;
    list.removeWhere((element) => element.ingredient.ingredient.name == event.removedIngredientModel.ingredient.name);

     shoppingListRepository.changeShoppingList(list);

    emit(ShoppingListState.loaded(shoppingListRepository.shoppingList));
  }

  void _removeAllItems(
      _ShoppingListRemoveAllItemsEvent event, Emitter<ShoppingListState> emit) {
    shoppingListRepository.changeShoppingList([]);

    emit(ShoppingListState.loaded(shoppingListRepository.shoppingList));
  }
}
