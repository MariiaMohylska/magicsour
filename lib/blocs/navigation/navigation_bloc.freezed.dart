// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'navigation_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NavigationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(int pageId) selectPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(int pageId)? selectPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(int pageId)? selectPage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NavigationInitEvent value) init,
    required TResult Function(_NavigationSelectEvent value) selectPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NavigationInitEvent value)? init,
    TResult? Function(_NavigationSelectEvent value)? selectPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NavigationInitEvent value)? init,
    TResult Function(_NavigationSelectEvent value)? selectPage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NavigationEventCopyWith<$Res> {
  factory $NavigationEventCopyWith(
          NavigationEvent value, $Res Function(NavigationEvent) then) =
      _$NavigationEventCopyWithImpl<$Res, NavigationEvent>;
}

/// @nodoc
class _$NavigationEventCopyWithImpl<$Res, $Val extends NavigationEvent>
    implements $NavigationEventCopyWith<$Res> {
  _$NavigationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_NavigationInitEventCopyWith<$Res> {
  factory _$$_NavigationInitEventCopyWith(_$_NavigationInitEvent value,
          $Res Function(_$_NavigationInitEvent) then) =
      __$$_NavigationInitEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_NavigationInitEventCopyWithImpl<$Res>
    extends _$NavigationEventCopyWithImpl<$Res, _$_NavigationInitEvent>
    implements _$$_NavigationInitEventCopyWith<$Res> {
  __$$_NavigationInitEventCopyWithImpl(_$_NavigationInitEvent _value,
      $Res Function(_$_NavigationInitEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_NavigationInitEvent implements _NavigationInitEvent {
  const _$_NavigationInitEvent();

  @override
  String toString() {
    return 'NavigationEvent.init()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_NavigationInitEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(int pageId) selectPage,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(int pageId)? selectPage,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(int pageId)? selectPage,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NavigationInitEvent value) init,
    required TResult Function(_NavigationSelectEvent value) selectPage,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NavigationInitEvent value)? init,
    TResult? Function(_NavigationSelectEvent value)? selectPage,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NavigationInitEvent value)? init,
    TResult Function(_NavigationSelectEvent value)? selectPage,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class _NavigationInitEvent implements NavigationEvent {
  const factory _NavigationInitEvent() = _$_NavigationInitEvent;
}

/// @nodoc
abstract class _$$_NavigationSelectEventCopyWith<$Res> {
  factory _$$_NavigationSelectEventCopyWith(_$_NavigationSelectEvent value,
          $Res Function(_$_NavigationSelectEvent) then) =
      __$$_NavigationSelectEventCopyWithImpl<$Res>;
  @useResult
  $Res call({int pageId});
}

/// @nodoc
class __$$_NavigationSelectEventCopyWithImpl<$Res>
    extends _$NavigationEventCopyWithImpl<$Res, _$_NavigationSelectEvent>
    implements _$$_NavigationSelectEventCopyWith<$Res> {
  __$$_NavigationSelectEventCopyWithImpl(_$_NavigationSelectEvent _value,
      $Res Function(_$_NavigationSelectEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageId = null,
  }) {
    return _then(_$_NavigationSelectEvent(
      pageId: null == pageId
          ? _value.pageId
          : pageId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_NavigationSelectEvent implements _NavigationSelectEvent {
  const _$_NavigationSelectEvent({required this.pageId});

  @override
  final int pageId;

  @override
  String toString() {
    return 'NavigationEvent.selectPage(pageId: $pageId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NavigationSelectEvent &&
            (identical(other.pageId, pageId) || other.pageId == pageId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pageId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NavigationSelectEventCopyWith<_$_NavigationSelectEvent> get copyWith =>
      __$$_NavigationSelectEventCopyWithImpl<_$_NavigationSelectEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(int pageId) selectPage,
  }) {
    return selectPage(pageId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(int pageId)? selectPage,
  }) {
    return selectPage?.call(pageId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(int pageId)? selectPage,
    required TResult orElse(),
  }) {
    if (selectPage != null) {
      return selectPage(pageId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NavigationInitEvent value) init,
    required TResult Function(_NavigationSelectEvent value) selectPage,
  }) {
    return selectPage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NavigationInitEvent value)? init,
    TResult? Function(_NavigationSelectEvent value)? selectPage,
  }) {
    return selectPage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NavigationInitEvent value)? init,
    TResult Function(_NavigationSelectEvent value)? selectPage,
    required TResult orElse(),
  }) {
    if (selectPage != null) {
      return selectPage(this);
    }
    return orElse();
  }
}

abstract class _NavigationSelectEvent implements NavigationEvent {
  const factory _NavigationSelectEvent({required final int pageId}) =
      _$_NavigationSelectEvent;

  int get pageId;
  @JsonKey(ignore: true)
  _$$_NavigationSelectEventCopyWith<_$_NavigationSelectEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$NavigationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(
            Map<String, List<NavigationBarItemViewModel>> pages)
        select,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(Map<String, List<NavigationBarItemViewModel>> pages)?
        select,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(Map<String, List<NavigationBarItemViewModel>> pages)?
        select,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NavigationInitialEvent value) init,
    required TResult Function(NavigationSelectedState value) select,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NavigationInitialEvent value)? init,
    TResult? Function(NavigationSelectedState value)? select,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NavigationInitialEvent value)? init,
    TResult Function(NavigationSelectedState value)? select,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NavigationStateCopyWith<$Res> {
  factory $NavigationStateCopyWith(
          NavigationState value, $Res Function(NavigationState) then) =
      _$NavigationStateCopyWithImpl<$Res, NavigationState>;
}

/// @nodoc
class _$NavigationStateCopyWithImpl<$Res, $Val extends NavigationState>
    implements $NavigationStateCopyWith<$Res> {
  _$NavigationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$NavigationInitialEventCopyWith<$Res> {
  factory _$$NavigationInitialEventCopyWith(_$NavigationInitialEvent value,
          $Res Function(_$NavigationInitialEvent) then) =
      __$$NavigationInitialEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NavigationInitialEventCopyWithImpl<$Res>
    extends _$NavigationStateCopyWithImpl<$Res, _$NavigationInitialEvent>
    implements _$$NavigationInitialEventCopyWith<$Res> {
  __$$NavigationInitialEventCopyWithImpl(_$NavigationInitialEvent _value,
      $Res Function(_$NavigationInitialEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NavigationInitialEvent implements NavigationInitialEvent {
  const _$NavigationInitialEvent();

  @override
  String toString() {
    return 'NavigationState.init()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NavigationInitialEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(
            Map<String, List<NavigationBarItemViewModel>> pages)
        select,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(Map<String, List<NavigationBarItemViewModel>> pages)?
        select,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(Map<String, List<NavigationBarItemViewModel>> pages)?
        select,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NavigationInitialEvent value) init,
    required TResult Function(NavigationSelectedState value) select,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NavigationInitialEvent value)? init,
    TResult? Function(NavigationSelectedState value)? select,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NavigationInitialEvent value)? init,
    TResult Function(NavigationSelectedState value)? select,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class NavigationInitialEvent implements NavigationState {
  const factory NavigationInitialEvent() = _$NavigationInitialEvent;
}

/// @nodoc
abstract class _$$NavigationSelectedStateCopyWith<$Res> {
  factory _$$NavigationSelectedStateCopyWith(_$NavigationSelectedState value,
          $Res Function(_$NavigationSelectedState) then) =
      __$$NavigationSelectedStateCopyWithImpl<$Res>;
  @useResult
  $Res call({Map<String, List<NavigationBarItemViewModel>> pages});
}

/// @nodoc
class __$$NavigationSelectedStateCopyWithImpl<$Res>
    extends _$NavigationStateCopyWithImpl<$Res, _$NavigationSelectedState>
    implements _$$NavigationSelectedStateCopyWith<$Res> {
  __$$NavigationSelectedStateCopyWithImpl(_$NavigationSelectedState _value,
      $Res Function(_$NavigationSelectedState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pages = null,
  }) {
    return _then(_$NavigationSelectedState(
      pages: null == pages
          ? _value._pages
          : pages // ignore: cast_nullable_to_non_nullable
              as Map<String, List<NavigationBarItemViewModel>>,
    ));
  }
}

/// @nodoc

class _$NavigationSelectedState implements NavigationSelectedState {
  const _$NavigationSelectedState(
      {required final Map<String, List<NavigationBarItemViewModel>> pages})
      : _pages = pages;

  final Map<String, List<NavigationBarItemViewModel>> _pages;
  @override
  Map<String, List<NavigationBarItemViewModel>> get pages {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_pages);
  }

  @override
  String toString() {
    return 'NavigationState.select(pages: $pages)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NavigationSelectedState &&
            const DeepCollectionEquality().equals(other._pages, _pages));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_pages));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NavigationSelectedStateCopyWith<_$NavigationSelectedState> get copyWith =>
      __$$NavigationSelectedStateCopyWithImpl<_$NavigationSelectedState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(
            Map<String, List<NavigationBarItemViewModel>> pages)
        select,
  }) {
    return select(pages);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(Map<String, List<NavigationBarItemViewModel>> pages)?
        select,
  }) {
    return select?.call(pages);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(Map<String, List<NavigationBarItemViewModel>> pages)?
        select,
    required TResult orElse(),
  }) {
    if (select != null) {
      return select(pages);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NavigationInitialEvent value) init,
    required TResult Function(NavigationSelectedState value) select,
  }) {
    return select(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NavigationInitialEvent value)? init,
    TResult? Function(NavigationSelectedState value)? select,
  }) {
    return select?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NavigationInitialEvent value)? init,
    TResult Function(NavigationSelectedState value)? select,
    required TResult orElse(),
  }) {
    if (select != null) {
      return select(this);
    }
    return orElse();
  }
}

abstract class NavigationSelectedState implements NavigationState {
  const factory NavigationSelectedState(
      {required final Map<String, List<NavigationBarItemViewModel>>
          pages}) = _$NavigationSelectedState;

  Map<String, List<NavigationBarItemViewModel>> get pages;
  @JsonKey(ignore: true)
  _$$NavigationSelectedStateCopyWith<_$NavigationSelectedState> get copyWith =>
      throw _privateConstructorUsedError;
}
