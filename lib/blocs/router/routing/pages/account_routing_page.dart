import 'package:flutter/material.dart';
import 'package:magicsour/blocs/router/router_data.dart';
import 'package:magicsour/screens/profile/profile_screen.dart';

class AccountRoutingPage extends Page<Object> {
  AccountRoutingPage(RouteAccountData data)
      : super(key: ValueKey(data.route.hashCode), name: data.route);

  @override
  Route<Object> createRoute(BuildContext context) {
    return MaterialPageRoute(builder: (_) => ProfileScreen(), settings: this);
  }
}