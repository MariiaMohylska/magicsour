import 'package:flutter/material.dart';
import 'package:magicsour/blocs/router/router_data.dart';
import 'package:magicsour/screens/shopping_list/shop_list_screen.dart';

class ShoppingListRoutingPage extends Page<Object> {
  ShoppingListRoutingPage(RouteShoppingListData data)
      : super(key: ValueKey(data.route), name: data.route);

  @override
  Route<Object> createRoute(BuildContext context) {
    return MaterialPageRoute(builder: (_) => ShopListScreen(), settings: this);
  }
}