import 'package:flutter/material.dart';
import 'package:magicsour/blocs/router/router_data.dart';
import 'package:magicsour/screens/home_screen.dart';

class HomeRoutingPage extends Page<Object> {
  HomeRoutingPage(RouteHomeData data)
      : super(key: ValueKey(data.route), name: data.route);

  @override
  Route<Object> createRoute(BuildContext context) {
    return MaterialPageRoute(builder: (_) => HomeScreen(), settings: this);
  }
}