// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'recipe_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RecipeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(bool isLoggedIn) updateRecipeList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function(bool isLoggedIn)? updateRecipeList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(bool isLoggedIn)? updateRecipeList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RecipeFetchEvent value) fetch,
    required TResult Function(_RecipeUpdateListEvent value) updateRecipeList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RecipeFetchEvent value)? fetch,
    TResult? Function(_RecipeUpdateListEvent value)? updateRecipeList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RecipeFetchEvent value)? fetch,
    TResult Function(_RecipeUpdateListEvent value)? updateRecipeList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecipeEventCopyWith<$Res> {
  factory $RecipeEventCopyWith(
          RecipeEvent value, $Res Function(RecipeEvent) then) =
      _$RecipeEventCopyWithImpl<$Res, RecipeEvent>;
}

/// @nodoc
class _$RecipeEventCopyWithImpl<$Res, $Val extends RecipeEvent>
    implements $RecipeEventCopyWith<$Res> {
  _$RecipeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_RecipeFetchEventCopyWith<$Res> {
  factory _$$_RecipeFetchEventCopyWith(
          _$_RecipeFetchEvent value, $Res Function(_$_RecipeFetchEvent) then) =
      __$$_RecipeFetchEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_RecipeFetchEventCopyWithImpl<$Res>
    extends _$RecipeEventCopyWithImpl<$Res, _$_RecipeFetchEvent>
    implements _$$_RecipeFetchEventCopyWith<$Res> {
  __$$_RecipeFetchEventCopyWithImpl(
      _$_RecipeFetchEvent _value, $Res Function(_$_RecipeFetchEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_RecipeFetchEvent implements _RecipeFetchEvent {
  const _$_RecipeFetchEvent();

  @override
  String toString() {
    return 'RecipeEvent.fetch()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_RecipeFetchEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(bool isLoggedIn) updateRecipeList,
  }) {
    return fetch();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function(bool isLoggedIn)? updateRecipeList,
  }) {
    return fetch?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(bool isLoggedIn)? updateRecipeList,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RecipeFetchEvent value) fetch,
    required TResult Function(_RecipeUpdateListEvent value) updateRecipeList,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RecipeFetchEvent value)? fetch,
    TResult? Function(_RecipeUpdateListEvent value)? updateRecipeList,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RecipeFetchEvent value)? fetch,
    TResult Function(_RecipeUpdateListEvent value)? updateRecipeList,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class _RecipeFetchEvent implements RecipeEvent {
  const factory _RecipeFetchEvent() = _$_RecipeFetchEvent;
}

/// @nodoc
abstract class _$$_RecipeUpdateListEventCopyWith<$Res> {
  factory _$$_RecipeUpdateListEventCopyWith(_$_RecipeUpdateListEvent value,
          $Res Function(_$_RecipeUpdateListEvent) then) =
      __$$_RecipeUpdateListEventCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isLoggedIn});
}

/// @nodoc
class __$$_RecipeUpdateListEventCopyWithImpl<$Res>
    extends _$RecipeEventCopyWithImpl<$Res, _$_RecipeUpdateListEvent>
    implements _$$_RecipeUpdateListEventCopyWith<$Res> {
  __$$_RecipeUpdateListEventCopyWithImpl(_$_RecipeUpdateListEvent _value,
      $Res Function(_$_RecipeUpdateListEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoggedIn = null,
  }) {
    return _then(_$_RecipeUpdateListEvent(
      isLoggedIn: null == isLoggedIn
          ? _value.isLoggedIn
          : isLoggedIn // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_RecipeUpdateListEvent implements _RecipeUpdateListEvent {
  const _$_RecipeUpdateListEvent({required this.isLoggedIn});

  @override
  final bool isLoggedIn;

  @override
  String toString() {
    return 'RecipeEvent.updateRecipeList(isLoggedIn: $isLoggedIn)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RecipeUpdateListEvent &&
            (identical(other.isLoggedIn, isLoggedIn) ||
                other.isLoggedIn == isLoggedIn));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoggedIn);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RecipeUpdateListEventCopyWith<_$_RecipeUpdateListEvent> get copyWith =>
      __$$_RecipeUpdateListEventCopyWithImpl<_$_RecipeUpdateListEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(bool isLoggedIn) updateRecipeList,
  }) {
    return updateRecipeList(isLoggedIn);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function(bool isLoggedIn)? updateRecipeList,
  }) {
    return updateRecipeList?.call(isLoggedIn);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(bool isLoggedIn)? updateRecipeList,
    required TResult orElse(),
  }) {
    if (updateRecipeList != null) {
      return updateRecipeList(isLoggedIn);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RecipeFetchEvent value) fetch,
    required TResult Function(_RecipeUpdateListEvent value) updateRecipeList,
  }) {
    return updateRecipeList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RecipeFetchEvent value)? fetch,
    TResult? Function(_RecipeUpdateListEvent value)? updateRecipeList,
  }) {
    return updateRecipeList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RecipeFetchEvent value)? fetch,
    TResult Function(_RecipeUpdateListEvent value)? updateRecipeList,
    required TResult orElse(),
  }) {
    if (updateRecipeList != null) {
      return updateRecipeList(this);
    }
    return orElse();
  }
}

abstract class _RecipeUpdateListEvent implements RecipeEvent {
  const factory _RecipeUpdateListEvent({required final bool isLoggedIn}) =
      _$_RecipeUpdateListEvent;

  bool get isLoggedIn;
  @JsonKey(ignore: true)
  _$$_RecipeUpdateListEventCopyWith<_$_RecipeUpdateListEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RecipeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<RecipeModel> recipes) fetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<RecipeModel> recipes)? fetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<RecipeModel> recipes)? fetched,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RecipeLoadingState value) loading,
    required TResult Function(RecipeFetchedState value) fetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RecipeLoadingState value)? loading,
    TResult? Function(RecipeFetchedState value)? fetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RecipeLoadingState value)? loading,
    TResult Function(RecipeFetchedState value)? fetched,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecipeStateCopyWith<$Res> {
  factory $RecipeStateCopyWith(
          RecipeState value, $Res Function(RecipeState) then) =
      _$RecipeStateCopyWithImpl<$Res, RecipeState>;
}

/// @nodoc
class _$RecipeStateCopyWithImpl<$Res, $Val extends RecipeState>
    implements $RecipeStateCopyWith<$Res> {
  _$RecipeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$RecipeLoadingStateCopyWith<$Res> {
  factory _$$RecipeLoadingStateCopyWith(_$RecipeLoadingState value,
          $Res Function(_$RecipeLoadingState) then) =
      __$$RecipeLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RecipeLoadingStateCopyWithImpl<$Res>
    extends _$RecipeStateCopyWithImpl<$Res, _$RecipeLoadingState>
    implements _$$RecipeLoadingStateCopyWith<$Res> {
  __$$RecipeLoadingStateCopyWithImpl(
      _$RecipeLoadingState _value, $Res Function(_$RecipeLoadingState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RecipeLoadingState implements RecipeLoadingState {
  const _$RecipeLoadingState();

  @override
  String toString() {
    return 'RecipeState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RecipeLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<RecipeModel> recipes) fetched,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<RecipeModel> recipes)? fetched,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<RecipeModel> recipes)? fetched,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RecipeLoadingState value) loading,
    required TResult Function(RecipeFetchedState value) fetched,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RecipeLoadingState value)? loading,
    TResult? Function(RecipeFetchedState value)? fetched,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RecipeLoadingState value)? loading,
    TResult Function(RecipeFetchedState value)? fetched,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class RecipeLoadingState implements RecipeState {
  const factory RecipeLoadingState() = _$RecipeLoadingState;
}

/// @nodoc
abstract class _$$RecipeFetchedStateCopyWith<$Res> {
  factory _$$RecipeFetchedStateCopyWith(_$RecipeFetchedState value,
          $Res Function(_$RecipeFetchedState) then) =
      __$$RecipeFetchedStateCopyWithImpl<$Res>;
  @useResult
  $Res call({List<RecipeModel> recipes});
}

/// @nodoc
class __$$RecipeFetchedStateCopyWithImpl<$Res>
    extends _$RecipeStateCopyWithImpl<$Res, _$RecipeFetchedState>
    implements _$$RecipeFetchedStateCopyWith<$Res> {
  __$$RecipeFetchedStateCopyWithImpl(
      _$RecipeFetchedState _value, $Res Function(_$RecipeFetchedState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recipes = null,
  }) {
    return _then(_$RecipeFetchedState(
      null == recipes
          ? _value._recipes
          : recipes // ignore: cast_nullable_to_non_nullable
              as List<RecipeModel>,
    ));
  }
}

/// @nodoc

class _$RecipeFetchedState implements RecipeFetchedState {
  const _$RecipeFetchedState(final List<RecipeModel> recipes)
      : _recipes = recipes;

  final List<RecipeModel> _recipes;
  @override
  List<RecipeModel> get recipes {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_recipes);
  }

  @override
  String toString() {
    return 'RecipeState.fetched(recipes: $recipes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecipeFetchedState &&
            const DeepCollectionEquality().equals(other._recipes, _recipes));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_recipes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RecipeFetchedStateCopyWith<_$RecipeFetchedState> get copyWith =>
      __$$RecipeFetchedStateCopyWithImpl<_$RecipeFetchedState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<RecipeModel> recipes) fetched,
  }) {
    return fetched(recipes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<RecipeModel> recipes)? fetched,
  }) {
    return fetched?.call(recipes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<RecipeModel> recipes)? fetched,
    required TResult orElse(),
  }) {
    if (fetched != null) {
      return fetched(recipes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RecipeLoadingState value) loading,
    required TResult Function(RecipeFetchedState value) fetched,
  }) {
    return fetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RecipeLoadingState value)? loading,
    TResult? Function(RecipeFetchedState value)? fetched,
  }) {
    return fetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RecipeLoadingState value)? loading,
    TResult Function(RecipeFetchedState value)? fetched,
    required TResult orElse(),
  }) {
    if (fetched != null) {
      return fetched(this);
    }
    return orElse();
  }
}

abstract class RecipeFetchedState implements RecipeState {
  const factory RecipeFetchedState(final List<RecipeModel> recipes) =
      _$RecipeFetchedState;

  List<RecipeModel> get recipes;
  @JsonKey(ignore: true)
  _$$RecipeFetchedStateCopyWith<_$RecipeFetchedState> get copyWith =>
      throw _privateConstructorUsedError;
}
