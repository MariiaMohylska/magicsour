part of 'navigation_bloc.dart';

@freezed
class NavigationEvent with _$NavigationEvent {
  const factory NavigationEvent.init() = _NavigationInitEvent;
  const factory NavigationEvent.selectPage({required int pageId}) = _NavigationSelectEvent;
}