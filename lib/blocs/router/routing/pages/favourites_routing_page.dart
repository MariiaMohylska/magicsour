import 'package:flutter/material.dart';
import 'package:magicsour/blocs/router/router_data.dart';
import 'package:magicsour/screens/favorites_screen.dart';

class FavoritesRoutingPage extends Page<Object> {
  FavoritesRoutingPage(RouteFavoritesData data)
      : super(key: ValueKey(data.route), name: data.route);

  @override
  Route<Object> createRoute(BuildContext context) {
    return MaterialPageRoute(builder: (_) => FavouritesScreen(), settings: this);
  }
}