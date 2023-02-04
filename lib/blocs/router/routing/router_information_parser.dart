import 'package:flutter/material.dart';
import 'package:magicsour/blocs/router/router_data.dart';
import 'package:magicsour/blocs/router/routing/router_info.dart';
import 'package:magicsour/blocs/router/routing/routes.dart';

class RouterInformationParser extends RouteInformationParser<RouterInfo> {
  @override
  Future<RouterInfo> parseRouteInformation(
      RouteInformation routeInformation) async {
    final String? path = routeInformation.location;

    final List<RouterData> routeStack = _getRouterStack(path);

    return RouterInfo(routeStack: routeStack);
  }

  List<RouterData> _getRouterStack(String? path) {
    final uri = Uri.parse(Uri.decodeFull(path!));

    final List<RouterData> stack =
        uri.pathSegments.map((e) => Routes.getRoute(e.toLowerCase())).toList();

    return stack;
  }

  @override
  RouteInformation restoreRouteInformation(RouterInfo configuration) {
    final buffer = StringBuffer();

    for (var element in configuration.routeStack) {
      buffer.write('/${element.route}');
    }

    return RouteInformation(location: Uri.encodeFull(buffer.toString()));
  }
}
