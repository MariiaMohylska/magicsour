part of 'shopping_list_bloc.dart';

@freezed
class ShoppingListEvent with _$ShoppingListEvent {
  const factory ShoppingListEvent.addSelectedItems({required List<RecipeIngredientModel> addedIngredientModel}) = _ShoppingListAddSelectedItemsEvent;
  const factory ShoppingListEvent.removeItem({required RecipeIngredientModel removedIngredientModel}) = _ShoppingListRemoveItemEvent;
  const factory ShoppingListEvent.removeAllItems() = _ShoppingListRemoveAllItemsEvent;
}