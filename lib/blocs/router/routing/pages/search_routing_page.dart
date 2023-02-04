import 'package:flutter/material.dart';
import 'package:magicsour/blocs/router/router_data.dart';
import 'package:magicsour/screens/search_screen.dart';

class SearchRoutingPage extends Page<Object> {
  SearchRoutingPage(RouteSearchData data)
      : super(key: ValueKey(data.route), name: data.route);

  @override
  Route<Object> createRoute(BuildContext context) {
    return MaterialPageRoute(builder: (_) => const SearchScreen(), settings: this);
  }
}