// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'router_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RouterEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RouterData data) push,
    required TResult Function() pop,
    required TResult Function(RouterInfo routerInfo) cleanAndPush,
    required TResult Function(RouterData data) popUntil,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RouterData data)? push,
    TResult? Function()? pop,
    TResult? Function(RouterInfo routerInfo)? cleanAndPush,
    TResult? Function(RouterData data)? popUntil,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RouterData data)? push,
    TResult Function()? pop,
    TResult Function(RouterInfo routerInfo)? cleanAndPush,
    TResult Function(RouterData data)? popUntil,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RouterPushEvent value) push,
    required TResult Function(RouterPopEvent value) pop,
    required TResult Function(RouterCleanAndPushEvent value) cleanAndPush,
    required TResult Function(RouterPopUntilEvent value) popUntil,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RouterPushEvent value)? push,
    TResult? Function(RouterPopEvent value)? pop,
    TResult? Function(RouterCleanAndPushEvent value)? cleanAndPush,
    TResult? Function(RouterPopUntilEvent value)? popUntil,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RouterPushEvent value)? push,
    TResult Function(RouterPopEvent value)? pop,
    TResult Function(RouterCleanAndPushEvent value)? cleanAndPush,
    TResult Function(RouterPopUntilEvent value)? popUntil,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RouterEventCopyWith<$Res> {
  factory $RouterEventCopyWith(
          RouterEvent value, $Res Function(RouterEvent) then) =
      _$RouterEventCopyWithImpl<$Res, RouterEvent>;
}

/// @nodoc
class _$RouterEventCopyWithImpl<$Res, $Val extends RouterEvent>
    implements $RouterEventCopyWith<$Res> {
  _$RouterEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$RouterPushEventCopyWith<$Res> {
  factory _$$RouterPushEventCopyWith(
          _$RouterPushEvent value, $Res Function(_$RouterPushEvent) then) =
      __$$RouterPushEventCopyWithImpl<$Res>;
  @useResult
  $Res call({RouterData data});

  $RouterDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$RouterPushEventCopyWithImpl<$Res>
    extends _$RouterEventCopyWithImpl<$Res, _$RouterPushEvent>
    implements _$$RouterPushEventCopyWith<$Res> {
  __$$RouterPushEventCopyWithImpl(
      _$RouterPushEvent _value, $Res Function(_$RouterPushEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$RouterPushEvent(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as RouterData,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $RouterDataCopyWith<$Res> get data {
    return $RouterDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc

class _$RouterPushEvent implements RouterPushEvent {
  const _$RouterPushEvent({required this.data});

  @override
  final RouterData data;

  @override
  String toString() {
    return 'RouterEvent.push(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RouterPushEvent &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RouterPushEventCopyWith<_$RouterPushEvent> get copyWith =>
      __$$RouterPushEventCopyWithImpl<_$RouterPushEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RouterData data) push,
    required TResult Function() pop,
    required TResult Function(RouterInfo routerInfo) cleanAndPush,
    required TResult Function(RouterData data) popUntil,
  }) {
    return push(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RouterData data)? push,
    TResult? Function()? pop,
    TResult? Function(RouterInfo routerInfo)? cleanAndPush,
    TResult? Function(RouterData data)? popUntil,
  }) {
    return push?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RouterData data)? push,
    TResult Function()? pop,
    TResult Function(RouterInfo routerInfo)? cleanAndPush,
    TResult Function(RouterData data)? popUntil,
    required TResult orElse(),
  }) {
    if (push != null) {
      return push(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RouterPushEvent value) push,
    required TResult Function(RouterPopEvent value) pop,
    required TResult Function(RouterCleanAndPushEvent value) cleanAndPush,
    required TResult Function(RouterPopUntilEvent value) popUntil,
  }) {
    return push(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RouterPushEvent value)? push,
    TResult? Function(RouterPopEvent value)? pop,
    TResult? Function(RouterCleanAndPushEvent value)? cleanAndPush,
    TResult? Function(RouterPopUntilEvent value)? popUntil,
  }) {
    return push?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RouterPushEvent value)? push,
    TResult Function(RouterPopEvent value)? pop,
    TResult Function(RouterCleanAndPushEvent value)? cleanAndPush,
    TResult Function(RouterPopUntilEvent value)? popUntil,
    required TResult orElse(),
  }) {
    if (push != null) {
      return push(this);
    }
    return orElse();
  }
}

abstract class RouterPushEvent implements RouterEvent {
  const factory RouterPushEvent({required final RouterData data}) =
      _$RouterPushEvent;

  RouterData get data;
  @JsonKey(ignore: true)
  _$$RouterPushEventCopyWith<_$RouterPushEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RouterPopEventCopyWith<$Res> {
  factory _$$RouterPopEventCopyWith(
          _$RouterPopEvent value, $Res Function(_$RouterPopEvent) then) =
      __$$RouterPopEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RouterPopEventCopyWithImpl<$Res>
    extends _$RouterEventCopyWithImpl<$Res, _$RouterPopEvent>
    implements _$$RouterPopEventCopyWith<$Res> {
  __$$RouterPopEventCopyWithImpl(
      _$RouterPopEvent _value, $Res Function(_$RouterPopEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RouterPopEvent implements RouterPopEvent {
  const _$RouterPopEvent();

  @override
  String toString() {
    return 'RouterEvent.pop()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RouterPopEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RouterData data) push,
    required TResult Function() pop,
    required TResult Function(RouterInfo routerInfo) cleanAndPush,
    required TResult Function(RouterData data) popUntil,
  }) {
    return pop();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RouterData data)? push,
    TResult? Function()? pop,
    TResult? Function(RouterInfo routerInfo)? cleanAndPush,
    TResult? Function(RouterData data)? popUntil,
  }) {
    return pop?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RouterData data)? push,
    TResult Function()? pop,
    TResult Function(RouterInfo routerInfo)? cleanAndPush,
    TResult Function(RouterData data)? popUntil,
    required TResult orElse(),
  }) {
    if (pop != null) {
      return pop();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RouterPushEvent value) push,
    required TResult Function(RouterPopEvent value) pop,
    required TResult Function(RouterCleanAndPushEvent value) cleanAndPush,
    required TResult Function(RouterPopUntilEvent value) popUntil,
  }) {
    return pop(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RouterPushEvent value)? push,
    TResult? Function(RouterPopEvent value)? pop,
    TResult? Function(RouterCleanAndPushEvent value)? cleanAndPush,
    TResult? Function(RouterPopUntilEvent value)? popUntil,
  }) {
    return pop?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RouterPushEvent value)? push,
    TResult Function(RouterPopEvent value)? pop,
    TResult Function(RouterCleanAndPushEvent value)? cleanAndPush,
    TResult Function(RouterPopUntilEvent value)? popUntil,
    required TResult orElse(),
  }) {
    if (pop != null) {
      return pop(this);
    }
    return orElse();
  }
}

abstract class RouterPopEvent implements RouterEvent {
  const factory RouterPopEvent() = _$RouterPopEvent;
}

/// @nodoc
abstract class _$$RouterCleanAndPushEventCopyWith<$Res> {
  factory _$$RouterCleanAndPushEventCopyWith(_$RouterCleanAndPushEvent value,
          $Res Function(_$RouterCleanAndPushEvent) then) =
      __$$RouterCleanAndPushEventCopyWithImpl<$Res>;
  @useResult
  $Res call({RouterInfo routerInfo});

  $RouterInfoCopyWith<$Res> get routerInfo;
}

/// @nodoc
class __$$RouterCleanAndPushEventCopyWithImpl<$Res>
    extends _$RouterEventCopyWithImpl<$Res, _$RouterCleanAndPushEvent>
    implements _$$RouterCleanAndPushEventCopyWith<$Res> {
  __$$RouterCleanAndPushEventCopyWithImpl(_$RouterCleanAndPushEvent _value,
      $Res Function(_$RouterCleanAndPushEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? routerInfo = null,
  }) {
    return _then(_$RouterCleanAndPushEvent(
      routerInfo: null == routerInfo
          ? _value.routerInfo
          : routerInfo // ignore: cast_nullable_to_non_nullable
              as RouterInfo,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $RouterInfoCopyWith<$Res> get routerInfo {
    return $RouterInfoCopyWith<$Res>(_value.routerInfo, (value) {
      return _then(_value.copyWith(routerInfo: value));
    });
  }
}

/// @nodoc

class _$RouterCleanAndPushEvent implements RouterCleanAndPushEvent {
  const _$RouterCleanAndPushEvent({required this.routerInfo});

  @override
  final RouterInfo routerInfo;

  @override
  String toString() {
    return 'RouterEvent.cleanAndPush(routerInfo: $routerInfo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RouterCleanAndPushEvent &&
            (identical(other.routerInfo, routerInfo) ||
                other.routerInfo == routerInfo));
  }

  @override
  int get hashCode => Object.hash(runtimeType, routerInfo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RouterCleanAndPushEventCopyWith<_$RouterCleanAndPushEvent> get copyWith =>
      __$$RouterCleanAndPushEventCopyWithImpl<_$RouterCleanAndPushEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RouterData data) push,
    required TResult Function() pop,
    required TResult Function(RouterInfo routerInfo) cleanAndPush,
    required TResult Function(RouterData data) popUntil,
  }) {
    return cleanAndPush(routerInfo);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RouterData data)? push,
    TResult? Function()? pop,
    TResult? Function(RouterInfo routerInfo)? cleanAndPush,
    TResult? Function(RouterData data)? popUntil,
  }) {
    return cleanAndPush?.call(routerInfo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RouterData data)? push,
    TResult Function()? pop,
    TResult Function(RouterInfo routerInfo)? cleanAndPush,
    TResult Function(RouterData data)? popUntil,
    required TResult orElse(),
  }) {
    if (cleanAndPush != null) {
      return cleanAndPush(routerInfo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RouterPushEvent value) push,
    required TResult Function(RouterPopEvent value) pop,
    required TResult Function(RouterCleanAndPushEvent value) cleanAndPush,
    required TResult Function(RouterPopUntilEvent value) popUntil,
  }) {
    return cleanAndPush(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RouterPushEvent value)? push,
    TResult? Function(RouterPopEvent value)? pop,
    TResult? Function(RouterCleanAndPushEvent value)? cleanAndPush,
    TResult? Function(RouterPopUntilEvent value)? popUntil,
  }) {
    return cleanAndPush?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RouterPushEvent value)? push,
    TResult Function(RouterPopEvent value)? pop,
    TResult Function(RouterCleanAndPushEvent value)? cleanAndPush,
    TResult Function(RouterPopUntilEvent value)? popUntil,
    required TResult orElse(),
  }) {
    if (cleanAndPush != null) {
      return cleanAndPush(this);
    }
    return orElse();
  }
}

abstract class RouterCleanAndPushEvent implements RouterEvent {
  const factory RouterCleanAndPushEvent(
      {required final RouterInfo routerInfo}) = _$RouterCleanAndPushEvent;

  RouterInfo get routerInfo;
  @JsonKey(ignore: true)
  _$$RouterCleanAndPushEventCopyWith<_$RouterCleanAndPushEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RouterPopUntilEventCopyWith<$Res> {
  factory _$$RouterPopUntilEventCopyWith(_$RouterPopUntilEvent value,
          $Res Function(_$RouterPopUntilEvent) then) =
      __$$RouterPopUntilEventCopyWithImpl<$Res>;
  @useResult
  $Res call({RouterData data});

  $RouterDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$RouterPopUntilEventCopyWithImpl<$Res>
    extends _$RouterEventCopyWithImpl<$Res, _$RouterPopUntilEvent>
    implements _$$RouterPopUntilEventCopyWith<$Res> {
  __$$RouterPopUntilEventCopyWithImpl(
      _$RouterPopUntilEvent _value, $Res Function(_$RouterPopUntilEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$RouterPopUntilEvent(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as RouterData,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $RouterDataCopyWith<$Res> get data {
    return $RouterDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc

class _$RouterPopUntilEvent implements RouterPopUntilEvent {
  const _$RouterPopUntilEvent({required this.data});

  @override
  final RouterData data;

  @override
  String toString() {
    return 'RouterEvent.popUntil(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RouterPopUntilEvent &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RouterPopUntilEventCopyWith<_$RouterPopUntilEvent> get copyWith =>
      __$$RouterPopUntilEventCopyWithImpl<_$RouterPopUntilEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RouterData data) push,
    required TResult Function() pop,
    required TResult Function(RouterInfo routerInfo) cleanAndPush,
    required TResult Function(RouterData data) popUntil,
  }) {
    return popUntil(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RouterData data)? push,
    TResult? Function()? pop,
    TResult? Function(RouterInfo routerInfo)? cleanAndPush,
    TResult? Function(RouterData data)? popUntil,
  }) {
    return popUntil?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RouterData data)? push,
    TResult Function()? pop,
    TResult Function(RouterInfo routerInfo)? cleanAndPush,
    TResult Function(RouterData data)? popUntil,
    required TResult orElse(),
  }) {
    if (popUntil != null) {
      return popUntil(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RouterPushEvent value) push,
    required TResult Function(RouterPopEvent value) pop,
    required TResult Function(RouterCleanAndPushEvent value) cleanAndPush,
    required TResult Function(RouterPopUntilEvent value) popUntil,
  }) {
    return popUntil(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RouterPushEvent value)? push,
    TResult? Function(RouterPopEvent value)? pop,
    TResult? Function(RouterCleanAndPushEvent value)? cleanAndPush,
    TResult? Function(RouterPopUntilEvent value)? popUntil,
  }) {
    return popUntil?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RouterPushEvent value)? push,
    TResult Function(RouterPopEvent value)? pop,
    TResult Function(RouterCleanAndPushEvent value)? cleanAndPush,
    TResult Function(RouterPopUntilEvent value)? popUntil,
    required TResult orElse(),
  }) {
    if (popUntil != null) {
      return popUntil(this);
    }
    return orElse();
  }
}

abstract class RouterPopUntilEvent implements RouterEvent {
  const factory RouterPopUntilEvent({required final RouterData data}) =
      _$RouterPopUntilEvent;

  RouterData get data;
  @JsonKey(ignore: true)
  _$$RouterPopUntilEventCopyWith<_$RouterPopUntilEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RouterState {
  RouterInfo get routerInfo => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RouterInfo routerInfo) push,
    required TResult Function(RouterInfo routerInfo) pop,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RouterInfo routerInfo)? push,
    TResult? Function(RouterInfo routerInfo)? pop,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RouterInfo routerInfo)? push,
    TResult Function(RouterInfo routerInfo)? pop,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RouterPushState value) push,
    required TResult Function(RouterPopState value) pop,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RouterPushState value)? push,
    TResult? Function(RouterPopState value)? pop,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RouterPushState value)? push,
    TResult Function(RouterPopState value)? pop,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RouterStateCopyWith<RouterState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RouterStateCopyWith<$Res> {
  factory $RouterStateCopyWith(
          RouterState value, $Res Function(RouterState) then) =
      _$RouterStateCopyWithImpl<$Res, RouterState>;
  @useResult
  $Res call({RouterInfo routerInfo});

  $RouterInfoCopyWith<$Res> get routerInfo;
}

/// @nodoc
class _$RouterStateCopyWithImpl<$Res, $Val extends RouterState>
    implements $RouterStateCopyWith<$Res> {
  _$RouterStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? routerInfo = null,
  }) {
    return _then(_value.copyWith(
      routerInfo: null == routerInfo
          ? _value.routerInfo
          : routerInfo // ignore: cast_nullable_to_non_nullable
              as RouterInfo,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RouterInfoCopyWith<$Res> get routerInfo {
    return $RouterInfoCopyWith<$Res>(_value.routerInfo, (value) {
      return _then(_value.copyWith(routerInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RouterPushStateCopyWith<$Res>
    implements $RouterStateCopyWith<$Res> {
  factory _$$RouterPushStateCopyWith(
          _$RouterPushState value, $Res Function(_$RouterPushState) then) =
      __$$RouterPushStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({RouterInfo routerInfo});

  @override
  $RouterInfoCopyWith<$Res> get routerInfo;
}

/// @nodoc
class __$$RouterPushStateCopyWithImpl<$Res>
    extends _$RouterStateCopyWithImpl<$Res, _$RouterPushState>
    implements _$$RouterPushStateCopyWith<$Res> {
  __$$RouterPushStateCopyWithImpl(
      _$RouterPushState _value, $Res Function(_$RouterPushState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? routerInfo = null,
  }) {
    return _then(_$RouterPushState(
      routerInfo: null == routerInfo
          ? _value.routerInfo
          : routerInfo // ignore: cast_nullable_to_non_nullable
              as RouterInfo,
    ));
  }
}

/// @nodoc

class _$RouterPushState implements RouterPushState {
  const _$RouterPushState({required this.routerInfo});

  @override
  final RouterInfo routerInfo;

  @override
  String toString() {
    return 'RouterState.push(routerInfo: $routerInfo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RouterPushState &&
            (identical(other.routerInfo, routerInfo) ||
                other.routerInfo == routerInfo));
  }

  @override
  int get hashCode => Object.hash(runtimeType, routerInfo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RouterPushStateCopyWith<_$RouterPushState> get copyWith =>
      __$$RouterPushStateCopyWithImpl<_$RouterPushState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RouterInfo routerInfo) push,
    required TResult Function(RouterInfo routerInfo) pop,
  }) {
    return push(routerInfo);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RouterInfo routerInfo)? push,
    TResult? Function(RouterInfo routerInfo)? pop,
  }) {
    return push?.call(routerInfo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RouterInfo routerInfo)? push,
    TResult Function(RouterInfo routerInfo)? pop,
    required TResult orElse(),
  }) {
    if (push != null) {
      return push(routerInfo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RouterPushState value) push,
    required TResult Function(RouterPopState value) pop,
  }) {
    return push(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RouterPushState value)? push,
    TResult? Function(RouterPopState value)? pop,
  }) {
    return push?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RouterPushState value)? push,
    TResult Function(RouterPopState value)? pop,
    required TResult orElse(),
  }) {
    if (push != null) {
      return push(this);
    }
    return orElse();
  }
}

abstract class RouterPushState implements RouterState {
  const factory RouterPushState({required final RouterInfo routerInfo}) =
      _$RouterPushState;

  @override
  RouterInfo get routerInfo;
  @override
  @JsonKey(ignore: true)
  _$$RouterPushStateCopyWith<_$RouterPushState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RouterPopStateCopyWith<$Res>
    implements $RouterStateCopyWith<$Res> {
  factory _$$RouterPopStateCopyWith(
          _$RouterPopState value, $Res Function(_$RouterPopState) then) =
      __$$RouterPopStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({RouterInfo routerInfo});

  @override
  $RouterInfoCopyWith<$Res> get routerInfo;
}

/// @nodoc
class __$$RouterPopStateCopyWithImpl<$Res>
    extends _$RouterStateCopyWithImpl<$Res, _$RouterPopState>
    implements _$$RouterPopStateCopyWith<$Res> {
  __$$RouterPopStateCopyWithImpl(
      _$RouterPopState _value, $Res Function(_$RouterPopState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? routerInfo = null,
  }) {
    return _then(_$RouterPopState(
      routerInfo: null == routerInfo
          ? _value.routerInfo
          : routerInfo // ignore: cast_nullable_to_non_nullable
              as RouterInfo,
    ));
  }
}

/// @nodoc

class _$RouterPopState implements RouterPopState {
  const _$RouterPopState({required this.routerInfo});

  @override
  final RouterInfo routerInfo;

  @override
  String toString() {
    return 'RouterState.pop(routerInfo: $routerInfo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RouterPopState &&
            (identical(other.routerInfo, routerInfo) ||
                other.routerInfo == routerInfo));
  }

  @override
  int get hashCode => Object.hash(runtimeType, routerInfo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RouterPopStateCopyWith<_$RouterPopState> get copyWith =>
      __$$RouterPopStateCopyWithImpl<_$RouterPopState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RouterInfo routerInfo) push,
    required TResult Function(RouterInfo routerInfo) pop,
  }) {
    return pop(routerInfo);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RouterInfo routerInfo)? push,
    TResult? Function(RouterInfo routerInfo)? pop,
  }) {
    return pop?.call(routerInfo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RouterInfo routerInfo)? push,
    TResult Function(RouterInfo routerInfo)? pop,
    required TResult orElse(),
  }) {
    if (pop != null) {
      return pop(routerInfo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RouterPushState value) push,
    required TResult Function(RouterPopState value) pop,
  }) {
    return pop(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RouterPushState value)? push,
    TResult? Function(RouterPopState value)? pop,
  }) {
    return pop?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RouterPushState value)? push,
    TResult Function(RouterPopState value)? pop,
    required TResult orElse(),
  }) {
    if (pop != null) {
      return pop(this);
    }
    return orElse();
  }
}

abstract class RouterPopState implements RouterState {
  const factory RouterPopState({required final RouterInfo routerInfo}) =
      _$RouterPopState;

  @override
  RouterInfo get routerInfo;
  @override
  @JsonKey(ignore: true)
  _$$RouterPopStateCopyWith<_$RouterPopState> get copyWith =>
      throw _privateConstructorUsedError;
}
