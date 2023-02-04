import 'package:flutter/material.dart';
import 'package:magicsour/models/navigation/navigation_bar_item_view_model.dart';
import 'package:magicsour/models/navigation_item_type.dart';
import 'package:magicsour/s_localization.dart';

extension NavigationMapper on NavigationBarItemViewModel {
  IconData? getNavigationIcon() {
    final Map<String, IconData> icons = {
      'home': Icons.home_outlined,
      'home_selected': Icons.home,
      'search': Icons.search_outlined,
      'search_selected': Icons.search,
      'favorites': Icons.favorite_outline,
      'favorites_selected': Icons.favorite,
      'account': Icons.person_outline,
      'account_selected': Icons.person,
      'shoppingList': Icons.shopping_cart_outlined,
      'shoppingList_selected': Icons.shopping_cart,
    };

    return selected
        ? icons['${type.name}_selected']
        : icons[type.name];
  }

  String getNavigationTitle(BuildContext context) {
    switch(type){
      case NavigationItemType.home:
        return S.instance!.home;
      case NavigationItemType.search:
        return S.instance!.search;
      case NavigationItemType.favorites:
        return S.instance!.favorites;
      case NavigationItemType.account:
        return S.instance!.account;
      case NavigationItemType.shoppingList:
        return S.instance!.shoppingList;
    }
  }

}



