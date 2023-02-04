import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:magicsour/blocs/router/router_data.dart';

part 'router_info.freezed.dart';

@freezed
class RouterInfo with _$RouterInfo {
  factory RouterInfo({
    required List<RouterData> routeStack,
  }) = _RouterInfo;

  static final RouterInfo initialStack =
      RouterInfo(routeStack: RouterData.initialStack);
}
