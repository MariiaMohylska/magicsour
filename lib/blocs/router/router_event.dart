part of 'router_bloc.dart';

@freezed
class RouterEvent with _$RouterEvent {
  const factory RouterEvent.push({required RouterData data}) = RouterPushEvent;
  const factory RouterEvent.pop() = RouterPopEvent;
  const factory RouterEvent.cleanAndPush({required RouterInfo routerInfo}) = RouterCleanAndPushEvent;
  const factory RouterEvent.popUntil({required RouterData data}) = RouterPopUntilEvent;
}
