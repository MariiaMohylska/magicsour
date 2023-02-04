// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'favorites_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FavoritesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) updateStatus,
    required TResult Function() loadFromCache,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? updateStatus,
    TResult? Function()? loadFromCache,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? updateStatus,
    TResult Function()? loadFromCache,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FavoritesUpdateStatusEvent value) updateStatus,
    required TResult Function(_FavoritesLoadFromCacheEvent value) loadFromCache,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FavoritesUpdateStatusEvent value)? updateStatus,
    TResult? Function(_FavoritesLoadFromCacheEvent value)? loadFromCache,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FavoritesUpdateStatusEvent value)? updateStatus,
    TResult Function(_FavoritesLoadFromCacheEvent value)? loadFromCache,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoritesEventCopyWith<$Res> {
  factory $FavoritesEventCopyWith(
          FavoritesEvent value, $Res Function(FavoritesEvent) then) =
      _$FavoritesEventCopyWithImpl<$Res, FavoritesEvent>;
}

/// @nodoc
class _$FavoritesEventCopyWithImpl<$Res, $Val extends FavoritesEvent>
    implements $FavoritesEventCopyWith<$Res> {
  _$FavoritesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_FavoritesUpdateStatusEventCopyWith<$Res> {
  factory _$$_FavoritesUpdateStatusEventCopyWith(
          _$_FavoritesUpdateStatusEvent value,
          $Res Function(_$_FavoritesUpdateStatusEvent) then) =
      __$$_FavoritesUpdateStatusEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$_FavoritesUpdateStatusEventCopyWithImpl<$Res>
    extends _$FavoritesEventCopyWithImpl<$Res, _$_FavoritesUpdateStatusEvent>
    implements _$$_FavoritesUpdateStatusEventCopyWith<$Res> {
  __$$_FavoritesUpdateStatusEventCopyWithImpl(
      _$_FavoritesUpdateStatusEvent _value,
      $Res Function(_$_FavoritesUpdateStatusEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$_FavoritesUpdateStatusEvent(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_FavoritesUpdateStatusEvent implements _FavoritesUpdateStatusEvent {
  const _$_FavoritesUpdateStatusEvent(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'FavoritesEvent.updateStatus(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FavoritesUpdateStatusEvent &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FavoritesUpdateStatusEventCopyWith<_$_FavoritesUpdateStatusEvent>
      get copyWith => __$$_FavoritesUpdateStatusEventCopyWithImpl<
          _$_FavoritesUpdateStatusEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) updateStatus,
    required TResult Function() loadFromCache,
  }) {
    return updateStatus(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? updateStatus,
    TResult? Function()? loadFromCache,
  }) {
    return updateStatus?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? updateStatus,
    TResult Function()? loadFromCache,
    required TResult orElse(),
  }) {
    if (updateStatus != null) {
      return updateStatus(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FavoritesUpdateStatusEvent value) updateStatus,
    required TResult Function(_FavoritesLoadFromCacheEvent value) loadFromCache,
  }) {
    return updateStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FavoritesUpdateStatusEvent value)? updateStatus,
    TResult? Function(_FavoritesLoadFromCacheEvent value)? loadFromCache,
  }) {
    return updateStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FavoritesUpdateStatusEvent value)? updateStatus,
    TResult Function(_FavoritesLoadFromCacheEvent value)? loadFromCache,
    required TResult orElse(),
  }) {
    if (updateStatus != null) {
      return updateStatus(this);
    }
    return orElse();
  }
}

abstract class _FavoritesUpdateStatusEvent implements FavoritesEvent {
  const factory _FavoritesUpdateStatusEvent(final String id) =
      _$_FavoritesUpdateStatusEvent;

  String get id;
  @JsonKey(ignore: true)
  _$$_FavoritesUpdateStatusEventCopyWith<_$_FavoritesUpdateStatusEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FavoritesLoadFromCacheEventCopyWith<$Res> {
  factory _$$_FavoritesLoadFromCacheEventCopyWith(
          _$_FavoritesLoadFromCacheEvent value,
          $Res Function(_$_FavoritesLoadFromCacheEvent) then) =
      __$$_FavoritesLoadFromCacheEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_FavoritesLoadFromCacheEventCopyWithImpl<$Res>
    extends _$FavoritesEventCopyWithImpl<$Res, _$_FavoritesLoadFromCacheEvent>
    implements _$$_FavoritesLoadFromCacheEventCopyWith<$Res> {
  __$$_FavoritesLoadFromCacheEventCopyWithImpl(
      _$_FavoritesLoadFromCacheEvent _value,
      $Res Function(_$_FavoritesLoadFromCacheEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_FavoritesLoadFromCacheEvent implements _FavoritesLoadFromCacheEvent {
  const _$_FavoritesLoadFromCacheEvent();

  @override
  String toString() {
    return 'FavoritesEvent.loadFromCache()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FavoritesLoadFromCacheEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) updateStatus,
    required TResult Function() loadFromCache,
  }) {
    return loadFromCache();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? updateStatus,
    TResult? Function()? loadFromCache,
  }) {
    return loadFromCache?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? updateStatus,
    TResult Function()? loadFromCache,
    required TResult orElse(),
  }) {
    if (loadFromCache != null) {
      return loadFromCache();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FavoritesUpdateStatusEvent value) updateStatus,
    required TResult Function(_FavoritesLoadFromCacheEvent value) loadFromCache,
  }) {
    return loadFromCache(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FavoritesUpdateStatusEvent value)? updateStatus,
    TResult? Function(_FavoritesLoadFromCacheEvent value)? loadFromCache,
  }) {
    return loadFromCache?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FavoritesUpdateStatusEvent value)? updateStatus,
    TResult Function(_FavoritesLoadFromCacheEvent value)? loadFromCache,
    required TResult orElse(),
  }) {
    if (loadFromCache != null) {
      return loadFromCache(this);
    }
    return orElse();
  }
}

abstract class _FavoritesLoadFromCacheEvent implements FavoritesEvent {
  const factory _FavoritesLoadFromCacheEvent() = _$_FavoritesLoadFromCacheEvent;
}

/// @nodoc
mixin _$FavoritesState {
  List<RecipeModel> get favoritesRecipes => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<RecipeModel> favoritesRecipes) fetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<RecipeModel> favoritesRecipes)? fetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<RecipeModel> favoritesRecipes)? fetched,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FavoritesInitialState value) fetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FavoritesInitialState value)? fetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FavoritesInitialState value)? fetched,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FavoritesStateCopyWith<FavoritesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoritesStateCopyWith<$Res> {
  factory $FavoritesStateCopyWith(
          FavoritesState value, $Res Function(FavoritesState) then) =
      _$FavoritesStateCopyWithImpl<$Res, FavoritesState>;
  @useResult
  $Res call({List<RecipeModel> favoritesRecipes});
}

/// @nodoc
class _$FavoritesStateCopyWithImpl<$Res, $Val extends FavoritesState>
    implements $FavoritesStateCopyWith<$Res> {
  _$FavoritesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? favoritesRecipes = null,
  }) {
    return _then(_value.copyWith(
      favoritesRecipes: null == favoritesRecipes
          ? _value.favoritesRecipes
          : favoritesRecipes // ignore: cast_nullable_to_non_nullable
              as List<RecipeModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FavoritesInitialStateCopyWith<$Res>
    implements $FavoritesStateCopyWith<$Res> {
  factory _$$FavoritesInitialStateCopyWith(_$FavoritesInitialState value,
          $Res Function(_$FavoritesInitialState) then) =
      __$$FavoritesInitialStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<RecipeModel> favoritesRecipes});
}

/// @nodoc
class __$$FavoritesInitialStateCopyWithImpl<$Res>
    extends _$FavoritesStateCopyWithImpl<$Res, _$FavoritesInitialState>
    implements _$$FavoritesInitialStateCopyWith<$Res> {
  __$$FavoritesInitialStateCopyWithImpl(_$FavoritesInitialState _value,
      $Res Function(_$FavoritesInitialState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? favoritesRecipes = null,
  }) {
    return _then(_$FavoritesInitialState(
      favoritesRecipes: null == favoritesRecipes
          ? _value._favoritesRecipes
          : favoritesRecipes // ignore: cast_nullable_to_non_nullable
              as List<RecipeModel>,
    ));
  }
}

/// @nodoc

class _$FavoritesInitialState implements FavoritesInitialState {
  const _$FavoritesInitialState(
      {required final List<RecipeModel> favoritesRecipes})
      : _favoritesRecipes = favoritesRecipes;

  final List<RecipeModel> _favoritesRecipes;
  @override
  List<RecipeModel> get favoritesRecipes {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_favoritesRecipes);
  }

  @override
  String toString() {
    return 'FavoritesState.fetched(favoritesRecipes: $favoritesRecipes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FavoritesInitialState &&
            const DeepCollectionEquality()
                .equals(other._favoritesRecipes, _favoritesRecipes));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_favoritesRecipes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FavoritesInitialStateCopyWith<_$FavoritesInitialState> get copyWith =>
      __$$FavoritesInitialStateCopyWithImpl<_$FavoritesInitialState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<RecipeModel> favoritesRecipes) fetched,
  }) {
    return fetched(favoritesRecipes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<RecipeModel> favoritesRecipes)? fetched,
  }) {
    return fetched?.call(favoritesRecipes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<RecipeModel> favoritesRecipes)? fetched,
    required TResult orElse(),
  }) {
    if (fetched != null) {
      return fetched(favoritesRecipes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FavoritesInitialState value) fetched,
  }) {
    return fetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FavoritesInitialState value)? fetched,
  }) {
    return fetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FavoritesInitialState value)? fetched,
    required TResult orElse(),
  }) {
    if (fetched != null) {
      return fetched(this);
    }
    return orElse();
  }
}

abstract class FavoritesInitialState implements FavoritesState {
  const factory FavoritesInitialState(
          {required final List<RecipeModel> favoritesRecipes}) =
      _$FavoritesInitialState;

  @override
  List<RecipeModel> get favoritesRecipes;
  @override
  @JsonKey(ignore: true)
  _$$FavoritesInitialStateCopyWith<_$FavoritesInitialState> get copyWith =>
      throw _privateConstructorUsedError;
}
