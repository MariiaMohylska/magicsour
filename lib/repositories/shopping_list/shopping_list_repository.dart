import 'package:magicsour/models/shop_list_item.dart';

class ShoppingListRepository {
  late List<ShopListItem> _shoppingList;

  ShoppingListRepository() {
    _init();
  }

  void _init(){
    //TODO: load from account or cache
    _shoppingList = [];
  }

  void changeShoppingList(List<ShopListItem> newList) {
    _shoppingList = newList;
  }

  List<ShopListItem> get shoppingList => _shoppingList;
}