import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:magicsour/blocs/router/router_bloc.dart';
import 'package:magicsour/blocs/router/routing/router_info.dart';
import 'package:magicsour/blocs/router/routing/routes.dart';
import 'package:magicsour/models/navigation/navigation_bar_item_view_model.dart';
import 'package:magicsour/repositories/navigation/navigation_repository.dart';

part 'navigation_bloc.freezed.dart';

part 'navigation_event.dart';

part 'navigation_state.dart';

class NavigationBloc extends Bloc<NavigationEvent, NavigationState> {
  final NavigationRepository _navigationRepository;
  final RouterBloc routerBloc;

  NavigationBloc(
      {required NavigationRepository navigationRepository,
      required this.routerBloc})
      : _navigationRepository = navigationRepository,
        super(const NavigationState.init()) {
    on<_NavigationInitEvent>(_init);
    on<_NavigationSelectEvent>(_selectPage);
    add(const NavigationEvent.init());
  }

  void _init(_NavigationInitEvent event, Emitter<NavigationState> emit) {
    final Map<String, List<NavigationBarItemViewModel>> pages =
        _navigationRepository.navigationBarItems;

    emit(NavigationState.select(pages: pages));
  }

  void _selectPage(_NavigationSelectEvent event, Emitter<NavigationState> emit) {
    final pageToNavigate = _navigationRepository.updateSelectedTab(event.pageId);

    final Map<String, List<NavigationBarItemViewModel>> pages =
        _navigationRepository.navigationBarItems;

    routerBloc.add(
        RouterEvent.cleanAndPush(routerInfo: RouterInfo(routeStack: [Routes.getRoute(pageToNavigate.name)])));

    emit(NavigationState.select(pages: pages));
  }
}
