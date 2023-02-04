// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'router_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RouterInfo {
  List<RouterData> get routeStack => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RouterInfoCopyWith<RouterInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RouterInfoCopyWith<$Res> {
  factory $RouterInfoCopyWith(
          RouterInfo value, $Res Function(RouterInfo) then) =
      _$RouterInfoCopyWithImpl<$Res, RouterInfo>;
  @useResult
  $Res call({List<RouterData> routeStack});
}

/// @nodoc
class _$RouterInfoCopyWithImpl<$Res, $Val extends RouterInfo>
    implements $RouterInfoCopyWith<$Res> {
  _$RouterInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? routeStack = null,
  }) {
    return _then(_value.copyWith(
      routeStack: null == routeStack
          ? _value.routeStack
          : routeStack // ignore: cast_nullable_to_non_nullable
              as List<RouterData>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RouterInfoCopyWith<$Res>
    implements $RouterInfoCopyWith<$Res> {
  factory _$$_RouterInfoCopyWith(
          _$_RouterInfo value, $Res Function(_$_RouterInfo) then) =
      __$$_RouterInfoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<RouterData> routeStack});
}

/// @nodoc
class __$$_RouterInfoCopyWithImpl<$Res>
    extends _$RouterInfoCopyWithImpl<$Res, _$_RouterInfo>
    implements _$$_RouterInfoCopyWith<$Res> {
  __$$_RouterInfoCopyWithImpl(
      _$_RouterInfo _value, $Res Function(_$_RouterInfo) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? routeStack = null,
  }) {
    return _then(_$_RouterInfo(
      routeStack: null == routeStack
          ? _value._routeStack
          : routeStack // ignore: cast_nullable_to_non_nullable
              as List<RouterData>,
    ));
  }
}

/// @nodoc

class _$_RouterInfo implements _RouterInfo {
  _$_RouterInfo({required final List<RouterData> routeStack})
      : _routeStack = routeStack;

  final List<RouterData> _routeStack;
  @override
  List<RouterData> get routeStack {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_routeStack);
  }

  @override
  String toString() {
    return 'RouterInfo(routeStack: $routeStack)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RouterInfo &&
            const DeepCollectionEquality()
                .equals(other._routeStack, _routeStack));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_routeStack));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RouterInfoCopyWith<_$_RouterInfo> get copyWith =>
      __$$_RouterInfoCopyWithImpl<_$_RouterInfo>(this, _$identity);
}

abstract class _RouterInfo implements RouterInfo {
  factory _RouterInfo({required final List<RouterData> routeStack}) =
      _$_RouterInfo;

  @override
  List<RouterData> get routeStack;
  @override
  @JsonKey(ignore: true)
  _$$_RouterInfoCopyWith<_$_RouterInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
