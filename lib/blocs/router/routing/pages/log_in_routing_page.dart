import 'package:flutter/material.dart';
import 'package:magicsour/blocs/router/router_data.dart';
import 'package:magicsour/screens/profile/profile_screen.dart';

class LogInRoutingPage extends Page<Object> {
  LogInRoutingPage(RouteLogInData data)
      : super(key: ValueKey(data.route), name: data.route);

  @override
  Route<Object> createRoute(BuildContext context) {
    return MaterialPageRoute(builder: (_) => ProfileScreen(), settings: this);
  }
}