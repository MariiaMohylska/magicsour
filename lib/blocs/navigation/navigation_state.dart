part of 'navigation_bloc.dart';

@freezed
class NavigationState with _$NavigationState {
  const factory NavigationState.init() = NavigationInitialEvent;
  const factory NavigationState.select({required Map<String, List<NavigationBarItemViewModel>> pages}) = NavigationSelectedState;
}