// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'shopping_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ShoppingListEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<RecipeIngredientModel> addedIngredientModel)
        addSelectedItems,
    required TResult Function(RecipeIngredientModel removedIngredientModel)
        removeItem,
    required TResult Function() removeAllItems,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<RecipeIngredientModel> addedIngredientModel)?
        addSelectedItems,
    TResult? Function(RecipeIngredientModel removedIngredientModel)? removeItem,
    TResult? Function()? removeAllItems,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<RecipeIngredientModel> addedIngredientModel)?
        addSelectedItems,
    TResult Function(RecipeIngredientModel removedIngredientModel)? removeItem,
    TResult Function()? removeAllItems,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ShoppingListAddSelectedItemsEvent value)
        addSelectedItems,
    required TResult Function(_ShoppingListRemoveItemEvent value) removeItem,
    required TResult Function(_ShoppingListRemoveAllItemsEvent value)
        removeAllItems,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ShoppingListAddSelectedItemsEvent value)?
        addSelectedItems,
    TResult? Function(_ShoppingListRemoveItemEvent value)? removeItem,
    TResult? Function(_ShoppingListRemoveAllItemsEvent value)? removeAllItems,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ShoppingListAddSelectedItemsEvent value)?
        addSelectedItems,
    TResult Function(_ShoppingListRemoveItemEvent value)? removeItem,
    TResult Function(_ShoppingListRemoveAllItemsEvent value)? removeAllItems,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShoppingListEventCopyWith<$Res> {
  factory $ShoppingListEventCopyWith(
          ShoppingListEvent value, $Res Function(ShoppingListEvent) then) =
      _$ShoppingListEventCopyWithImpl<$Res, ShoppingListEvent>;
}

/// @nodoc
class _$ShoppingListEventCopyWithImpl<$Res, $Val extends ShoppingListEvent>
    implements $ShoppingListEventCopyWith<$Res> {
  _$ShoppingListEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_ShoppingListAddSelectedItemsEventCopyWith<$Res> {
  factory _$$_ShoppingListAddSelectedItemsEventCopyWith(
          _$_ShoppingListAddSelectedItemsEvent value,
          $Res Function(_$_ShoppingListAddSelectedItemsEvent) then) =
      __$$_ShoppingListAddSelectedItemsEventCopyWithImpl<$Res>;
  @useResult
  $Res call({List<RecipeIngredientModel> addedIngredientModel});
}

/// @nodoc
class __$$_ShoppingListAddSelectedItemsEventCopyWithImpl<$Res>
    extends _$ShoppingListEventCopyWithImpl<$Res,
        _$_ShoppingListAddSelectedItemsEvent>
    implements _$$_ShoppingListAddSelectedItemsEventCopyWith<$Res> {
  __$$_ShoppingListAddSelectedItemsEventCopyWithImpl(
      _$_ShoppingListAddSelectedItemsEvent _value,
      $Res Function(_$_ShoppingListAddSelectedItemsEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addedIngredientModel = null,
  }) {
    return _then(_$_ShoppingListAddSelectedItemsEvent(
      addedIngredientModel: null == addedIngredientModel
          ? _value._addedIngredientModel
          : addedIngredientModel // ignore: cast_nullable_to_non_nullable
              as List<RecipeIngredientModel>,
    ));
  }
}

/// @nodoc

class _$_ShoppingListAddSelectedItemsEvent
    implements _ShoppingListAddSelectedItemsEvent {
  const _$_ShoppingListAddSelectedItemsEvent(
      {required final List<RecipeIngredientModel> addedIngredientModel})
      : _addedIngredientModel = addedIngredientModel;

  final List<RecipeIngredientModel> _addedIngredientModel;
  @override
  List<RecipeIngredientModel> get addedIngredientModel {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_addedIngredientModel);
  }

  @override
  String toString() {
    return 'ShoppingListEvent.addSelectedItems(addedIngredientModel: $addedIngredientModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ShoppingListAddSelectedItemsEvent &&
            const DeepCollectionEquality()
                .equals(other._addedIngredientModel, _addedIngredientModel));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_addedIngredientModel));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ShoppingListAddSelectedItemsEventCopyWith<
          _$_ShoppingListAddSelectedItemsEvent>
      get copyWith => __$$_ShoppingListAddSelectedItemsEventCopyWithImpl<
          _$_ShoppingListAddSelectedItemsEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<RecipeIngredientModel> addedIngredientModel)
        addSelectedItems,
    required TResult Function(RecipeIngredientModel removedIngredientModel)
        removeItem,
    required TResult Function() removeAllItems,
  }) {
    return addSelectedItems(addedIngredientModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<RecipeIngredientModel> addedIngredientModel)?
        addSelectedItems,
    TResult? Function(RecipeIngredientModel removedIngredientModel)? removeItem,
    TResult? Function()? removeAllItems,
  }) {
    return addSelectedItems?.call(addedIngredientModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<RecipeIngredientModel> addedIngredientModel)?
        addSelectedItems,
    TResult Function(RecipeIngredientModel removedIngredientModel)? removeItem,
    TResult Function()? removeAllItems,
    required TResult orElse(),
  }) {
    if (addSelectedItems != null) {
      return addSelectedItems(addedIngredientModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ShoppingListAddSelectedItemsEvent value)
        addSelectedItems,
    required TResult Function(_ShoppingListRemoveItemEvent value) removeItem,
    required TResult Function(_ShoppingListRemoveAllItemsEvent value)
        removeAllItems,
  }) {
    return addSelectedItems(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ShoppingListAddSelectedItemsEvent value)?
        addSelectedItems,
    TResult? Function(_ShoppingListRemoveItemEvent value)? removeItem,
    TResult? Function(_ShoppingListRemoveAllItemsEvent value)? removeAllItems,
  }) {
    return addSelectedItems?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ShoppingListAddSelectedItemsEvent value)?
        addSelectedItems,
    TResult Function(_ShoppingListRemoveItemEvent value)? removeItem,
    TResult Function(_ShoppingListRemoveAllItemsEvent value)? removeAllItems,
    required TResult orElse(),
  }) {
    if (addSelectedItems != null) {
      return addSelectedItems(this);
    }
    return orElse();
  }
}

abstract class _ShoppingListAddSelectedItemsEvent implements ShoppingListEvent {
  const factory _ShoppingListAddSelectedItemsEvent(
          {required final List<RecipeIngredientModel> addedIngredientModel}) =
      _$_ShoppingListAddSelectedItemsEvent;

  List<RecipeIngredientModel> get addedIngredientModel;
  @JsonKey(ignore: true)
  _$$_ShoppingListAddSelectedItemsEventCopyWith<
          _$_ShoppingListAddSelectedItemsEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ShoppingListRemoveItemEventCopyWith<$Res> {
  factory _$$_ShoppingListRemoveItemEventCopyWith(
          _$_ShoppingListRemoveItemEvent value,
          $Res Function(_$_ShoppingListRemoveItemEvent) then) =
      __$$_ShoppingListRemoveItemEventCopyWithImpl<$Res>;
  @useResult
  $Res call({RecipeIngredientModel removedIngredientModel});
}

/// @nodoc
class __$$_ShoppingListRemoveItemEventCopyWithImpl<$Res>
    extends _$ShoppingListEventCopyWithImpl<$Res,
        _$_ShoppingListRemoveItemEvent>
    implements _$$_ShoppingListRemoveItemEventCopyWith<$Res> {
  __$$_ShoppingListRemoveItemEventCopyWithImpl(
      _$_ShoppingListRemoveItemEvent _value,
      $Res Function(_$_ShoppingListRemoveItemEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? removedIngredientModel = null,
  }) {
    return _then(_$_ShoppingListRemoveItemEvent(
      removedIngredientModel: null == removedIngredientModel
          ? _value.removedIngredientModel
          : removedIngredientModel // ignore: cast_nullable_to_non_nullable
              as RecipeIngredientModel,
    ));
  }
}

/// @nodoc

class _$_ShoppingListRemoveItemEvent implements _ShoppingListRemoveItemEvent {
  const _$_ShoppingListRemoveItemEvent({required this.removedIngredientModel});

  @override
  final RecipeIngredientModel removedIngredientModel;

  @override
  String toString() {
    return 'ShoppingListEvent.removeItem(removedIngredientModel: $removedIngredientModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ShoppingListRemoveItemEvent &&
            (identical(other.removedIngredientModel, removedIngredientModel) ||
                other.removedIngredientModel == removedIngredientModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, removedIngredientModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ShoppingListRemoveItemEventCopyWith<_$_ShoppingListRemoveItemEvent>
      get copyWith => __$$_ShoppingListRemoveItemEventCopyWithImpl<
          _$_ShoppingListRemoveItemEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<RecipeIngredientModel> addedIngredientModel)
        addSelectedItems,
    required TResult Function(RecipeIngredientModel removedIngredientModel)
        removeItem,
    required TResult Function() removeAllItems,
  }) {
    return removeItem(removedIngredientModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<RecipeIngredientModel> addedIngredientModel)?
        addSelectedItems,
    TResult? Function(RecipeIngredientModel removedIngredientModel)? removeItem,
    TResult? Function()? removeAllItems,
  }) {
    return removeItem?.call(removedIngredientModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<RecipeIngredientModel> addedIngredientModel)?
        addSelectedItems,
    TResult Function(RecipeIngredientModel removedIngredientModel)? removeItem,
    TResult Function()? removeAllItems,
    required TResult orElse(),
  }) {
    if (removeItem != null) {
      return removeItem(removedIngredientModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ShoppingListAddSelectedItemsEvent value)
        addSelectedItems,
    required TResult Function(_ShoppingListRemoveItemEvent value) removeItem,
    required TResult Function(_ShoppingListRemoveAllItemsEvent value)
        removeAllItems,
  }) {
    return removeItem(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ShoppingListAddSelectedItemsEvent value)?
        addSelectedItems,
    TResult? Function(_ShoppingListRemoveItemEvent value)? removeItem,
    TResult? Function(_ShoppingListRemoveAllItemsEvent value)? removeAllItems,
  }) {
    return removeItem?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ShoppingListAddSelectedItemsEvent value)?
        addSelectedItems,
    TResult Function(_ShoppingListRemoveItemEvent value)? removeItem,
    TResult Function(_ShoppingListRemoveAllItemsEvent value)? removeAllItems,
    required TResult orElse(),
  }) {
    if (removeItem != null) {
      return removeItem(this);
    }
    return orElse();
  }
}

abstract class _ShoppingListRemoveItemEvent implements ShoppingListEvent {
  const factory _ShoppingListRemoveItemEvent(
          {required final RecipeIngredientModel removedIngredientModel}) =
      _$_ShoppingListRemoveItemEvent;

  RecipeIngredientModel get removedIngredientModel;
  @JsonKey(ignore: true)
  _$$_ShoppingListRemoveItemEventCopyWith<_$_ShoppingListRemoveItemEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ShoppingListRemoveAllItemsEventCopyWith<$Res> {
  factory _$$_ShoppingListRemoveAllItemsEventCopyWith(
          _$_ShoppingListRemoveAllItemsEvent value,
          $Res Function(_$_ShoppingListRemoveAllItemsEvent) then) =
      __$$_ShoppingListRemoveAllItemsEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ShoppingListRemoveAllItemsEventCopyWithImpl<$Res>
    extends _$ShoppingListEventCopyWithImpl<$Res,
        _$_ShoppingListRemoveAllItemsEvent>
    implements _$$_ShoppingListRemoveAllItemsEventCopyWith<$Res> {
  __$$_ShoppingListRemoveAllItemsEventCopyWithImpl(
      _$_ShoppingListRemoveAllItemsEvent _value,
      $Res Function(_$_ShoppingListRemoveAllItemsEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ShoppingListRemoveAllItemsEvent
    implements _ShoppingListRemoveAllItemsEvent {
  const _$_ShoppingListRemoveAllItemsEvent();

  @override
  String toString() {
    return 'ShoppingListEvent.removeAllItems()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ShoppingListRemoveAllItemsEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<RecipeIngredientModel> addedIngredientModel)
        addSelectedItems,
    required TResult Function(RecipeIngredientModel removedIngredientModel)
        removeItem,
    required TResult Function() removeAllItems,
  }) {
    return removeAllItems();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<RecipeIngredientModel> addedIngredientModel)?
        addSelectedItems,
    TResult? Function(RecipeIngredientModel removedIngredientModel)? removeItem,
    TResult? Function()? removeAllItems,
  }) {
    return removeAllItems?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<RecipeIngredientModel> addedIngredientModel)?
        addSelectedItems,
    TResult Function(RecipeIngredientModel removedIngredientModel)? removeItem,
    TResult Function()? removeAllItems,
    required TResult orElse(),
  }) {
    if (removeAllItems != null) {
      return removeAllItems();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ShoppingListAddSelectedItemsEvent value)
        addSelectedItems,
    required TResult Function(_ShoppingListRemoveItemEvent value) removeItem,
    required TResult Function(_ShoppingListRemoveAllItemsEvent value)
        removeAllItems,
  }) {
    return removeAllItems(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ShoppingListAddSelectedItemsEvent value)?
        addSelectedItems,
    TResult? Function(_ShoppingListRemoveItemEvent value)? removeItem,
    TResult? Function(_ShoppingListRemoveAllItemsEvent value)? removeAllItems,
  }) {
    return removeAllItems?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ShoppingListAddSelectedItemsEvent value)?
        addSelectedItems,
    TResult Function(_ShoppingListRemoveItemEvent value)? removeItem,
    TResult Function(_ShoppingListRemoveAllItemsEvent value)? removeAllItems,
    required TResult orElse(),
  }) {
    if (removeAllItems != null) {
      return removeAllItems(this);
    }
    return orElse();
  }
}

abstract class _ShoppingListRemoveAllItemsEvent implements ShoppingListEvent {
  const factory _ShoppingListRemoveAllItemsEvent() =
      _$_ShoppingListRemoveAllItemsEvent;
}

/// @nodoc
mixin _$ShoppingListState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<ShopListItem> shoppingList) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<ShopListItem> shoppingList)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<ShopListItem> shoppingList)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShoppingListLoadingState value) loading,
    required TResult Function(ShoppingListLoadedState value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ShoppingListLoadingState value)? loading,
    TResult? Function(ShoppingListLoadedState value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShoppingListLoadingState value)? loading,
    TResult Function(ShoppingListLoadedState value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShoppingListStateCopyWith<$Res> {
  factory $ShoppingListStateCopyWith(
          ShoppingListState value, $Res Function(ShoppingListState) then) =
      _$ShoppingListStateCopyWithImpl<$Res, ShoppingListState>;
}

/// @nodoc
class _$ShoppingListStateCopyWithImpl<$Res, $Val extends ShoppingListState>
    implements $ShoppingListStateCopyWith<$Res> {
  _$ShoppingListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ShoppingListLoadingStateCopyWith<$Res> {
  factory _$$ShoppingListLoadingStateCopyWith(_$ShoppingListLoadingState value,
          $Res Function(_$ShoppingListLoadingState) then) =
      __$$ShoppingListLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ShoppingListLoadingStateCopyWithImpl<$Res>
    extends _$ShoppingListStateCopyWithImpl<$Res, _$ShoppingListLoadingState>
    implements _$$ShoppingListLoadingStateCopyWith<$Res> {
  __$$ShoppingListLoadingStateCopyWithImpl(_$ShoppingListLoadingState _value,
      $Res Function(_$ShoppingListLoadingState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ShoppingListLoadingState implements ShoppingListLoadingState {
  const _$ShoppingListLoadingState();

  @override
  String toString() {
    return 'ShoppingListState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShoppingListLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<ShopListItem> shoppingList) loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<ShopListItem> shoppingList)? loaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<ShopListItem> shoppingList)? loaded,
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
    required TResult Function(ShoppingListLoadingState value) loading,
    required TResult Function(ShoppingListLoadedState value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ShoppingListLoadingState value)? loading,
    TResult? Function(ShoppingListLoadedState value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShoppingListLoadingState value)? loading,
    TResult Function(ShoppingListLoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ShoppingListLoadingState implements ShoppingListState {
  const factory ShoppingListLoadingState() = _$ShoppingListLoadingState;
}

/// @nodoc
abstract class _$$ShoppingListLoadedStateCopyWith<$Res> {
  factory _$$ShoppingListLoadedStateCopyWith(_$ShoppingListLoadedState value,
          $Res Function(_$ShoppingListLoadedState) then) =
      __$$ShoppingListLoadedStateCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ShopListItem> shoppingList});
}

/// @nodoc
class __$$ShoppingListLoadedStateCopyWithImpl<$Res>
    extends _$ShoppingListStateCopyWithImpl<$Res, _$ShoppingListLoadedState>
    implements _$$ShoppingListLoadedStateCopyWith<$Res> {
  __$$ShoppingListLoadedStateCopyWithImpl(_$ShoppingListLoadedState _value,
      $Res Function(_$ShoppingListLoadedState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shoppingList = null,
  }) {
    return _then(_$ShoppingListLoadedState(
      null == shoppingList
          ? _value._shoppingList
          : shoppingList // ignore: cast_nullable_to_non_nullable
              as List<ShopListItem>,
    ));
  }
}

/// @nodoc

class _$ShoppingListLoadedState implements ShoppingListLoadedState {
  const _$ShoppingListLoadedState(final List<ShopListItem> shoppingList)
      : _shoppingList = shoppingList;

  final List<ShopListItem> _shoppingList;
  @override
  List<ShopListItem> get shoppingList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_shoppingList);
  }

  @override
  String toString() {
    return 'ShoppingListState.loaded(shoppingList: $shoppingList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShoppingListLoadedState &&
            const DeepCollectionEquality()
                .equals(other._shoppingList, _shoppingList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_shoppingList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShoppingListLoadedStateCopyWith<_$ShoppingListLoadedState> get copyWith =>
      __$$ShoppingListLoadedStateCopyWithImpl<_$ShoppingListLoadedState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<ShopListItem> shoppingList) loaded,
  }) {
    return loaded(shoppingList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<ShopListItem> shoppingList)? loaded,
  }) {
    return loaded?.call(shoppingList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<ShopListItem> shoppingList)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(shoppingList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShoppingListLoadingState value) loading,
    required TResult Function(ShoppingListLoadedState value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ShoppingListLoadingState value)? loading,
    TResult? Function(ShoppingListLoadedState value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShoppingListLoadingState value)? loading,
    TResult Function(ShoppingListLoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class ShoppingListLoadedState implements ShoppingListState {
  const factory ShoppingListLoadedState(final List<ShopListItem> shoppingList) =
      _$ShoppingListLoadedState;

  List<ShopListItem> get shoppingList;
  @JsonKey(ignore: true)
  _$$ShoppingListLoadedStateCopyWith<_$ShoppingListLoadedState> get copyWith =>
      throw _privateConstructorUsedError;
}
