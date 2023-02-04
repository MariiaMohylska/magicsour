import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:magicsour/blocs/router/router_data.dart';
import 'package:magicsour/blocs/router/routing/router_info.dart';

part 'router_event.dart';

part 'router_state.dart';

part 'router_bloc.freezed.dart';

class RouterBloc extends Bloc<RouterEvent, RouterState> {
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  RouterBloc() : super(RouterState.push(routerInfo: RouterInfo.initialStack)) {
    on<RouterPushEvent>(_push);
    on<RouterPopEvent>(_pop);
    on<RouterCleanAndPushEvent>(_cleanAndPush);
    on<RouterPopUntilEvent>(_popUntil);
  }

  void _push(RouterPushEvent event, Emitter<RouterState> emit) {
    List<RouterData> newStack = [...state.routerInfo.routeStack];

    newStack.add(event.data);
    emit(RouterState.push(routerInfo: RouterInfo(routeStack: newStack)));
  }

  void _pop(RouterPopEvent event, Emitter<RouterState> emit) {
    List<RouterData> newStack = [...state.routerInfo.routeStack];
    newStack.removeLast();

    emit(RouterState.pop(routerInfo: RouterInfo(routeStack: newStack)));
  }

  void _cleanAndPush(RouterCleanAndPushEvent event, Emitter<RouterState> emit) {
    emit(RouterState.push(routerInfo: event.routerInfo));
  }

  void _popUntil(RouterPopUntilEvent event, Emitter<RouterState> emit) {
    List<RouterData> newStack = [...state.routerInfo.routeStack];
    int indexOfRoute =
        newStack.lastIndexWhere((element) => element == event.data);
    newStack.removeRange(indexOfRoute + 1, newStack.length);
    emit(RouterState.push(routerInfo: RouterInfo(routeStack: newStack)));
  }
}
