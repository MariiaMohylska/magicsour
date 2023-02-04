part of 'router_bloc.dart';

@freezed
class RouterState with _$RouterState {
  const factory RouterState.push({required RouterInfo routerInfo}) = RouterPushState;

  const factory RouterState.pop({required RouterInfo routerInfo}) = RouterPopState;
}
