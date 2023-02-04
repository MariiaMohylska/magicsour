part of 'shopping_list_bloc.dart';

@freezed
class ShoppingListState with _$ShoppingListState {
  const factory ShoppingListState.loading() = ShoppingListLoadingState;
  const factory ShoppingListState.loaded(List<ShopListItem> shoppingList) = ShoppingListLoadedState;
}