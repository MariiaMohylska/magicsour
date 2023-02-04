import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:magicsour/blocs/router/extensions/router_data_extension.dart';
import 'package:magicsour/blocs/router/router_bloc.dart';
import 'package:magicsour/blocs/router/router_data.dart';
import 'package:magicsour/blocs/router/routing/pages/home_routing_page.dart';
import 'package:magicsour/blocs/router/routing/router_info.dart';

class RouteDelegate extends RouterDelegate<RouterInfo>
    with ChangeNotifier, PopNavigatorRouterDelegateMixin<RouterInfo> {
  late final RouterBloc bloc;
  StreamSubscription<RouterState>? _subscription;
  RouterInfo _currentConfiguration = RouterInfo.initialStack;

  RouteDelegate({required this.bloc}) {
    _subscription = bloc.stream.listen(_onUpdateRoutingBlocState);
  }

  void _onUpdateRoutingBlocState(RouterState state) {
      _currentConfiguration = state.routerInfo;
      notifyListeners();
  }

  @override
  RouterInfo get currentConfiguration => _currentConfiguration;

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: navigatorKey,
      pages: _getPages(),
      onPopPage: _onPop,
    );
  }

  List<Page<dynamic>> _getPages() {
    final pages = currentConfiguration.routeStack.map((e) {
      return e.routeToPage;
    }).toList();
    return pages.isEmpty ? [HomeRoutingPage(RouteHomeData())] : pages;
  }

  bool _onPop(Route<dynamic> route, dynamic result) {
    if (!route.didPop(result)) {
      return false;
    }
    bloc.add(const RouterEvent.pop());
    return true;
  }

  @override
  GlobalKey<NavigatorState>? get navigatorKey => bloc.navigatorKey;

  @override
  Future<void> setNewRoutePath(RouterInfo configuration) async {
    log('setNewRoutePath');
    bloc.add(RouterEvent.cleanAndPush(routerInfo: configuration));
  }

  @override
  void dispose() {
    _subscription?.cancel();
    super.dispose();
  }
}
