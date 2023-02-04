// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'account_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AccountEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() logIn,
    required TResult Function() logOut,
    required TResult Function() updateStatusToLoggedIn,
    required TResult Function() updateStatusToLoggedOut,
    required TResult Function(
            Map<SelectableModel<ProductType>, List<SelectableModel<Ingredient>>>
                restrictedProducts)
        updateRestrictedProducts,
    required TResult Function(List<SelectableModel<Allergens>> allergensList)
        updateAllergens,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? logIn,
    TResult? Function()? logOut,
    TResult? Function()? updateStatusToLoggedIn,
    TResult? Function()? updateStatusToLoggedOut,
    TResult? Function(
            Map<SelectableModel<ProductType>, List<SelectableModel<Ingredient>>>
                restrictedProducts)?
        updateRestrictedProducts,
    TResult? Function(List<SelectableModel<Allergens>> allergensList)?
        updateAllergens,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? logIn,
    TResult Function()? logOut,
    TResult Function()? updateStatusToLoggedIn,
    TResult Function()? updateStatusToLoggedOut,
    TResult Function(
            Map<SelectableModel<ProductType>, List<SelectableModel<Ingredient>>>
                restrictedProducts)?
        updateRestrictedProducts,
    TResult Function(List<SelectableModel<Allergens>> allergensList)?
        updateAllergens,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AccountLogInEvent value) logIn,
    required TResult Function(_AccountLogOutEvent value) logOut,
    required TResult Function(_AccountUpdateStatusToLoggedIn value)
        updateStatusToLoggedIn,
    required TResult Function(_AccountUpdateStatusToLoggedOut value)
        updateStatusToLoggedOut,
    required TResult Function(_AccountUpdateRestrictedProductsEvent value)
        updateRestrictedProducts,
    required TResult Function(_AccountUpdateAllergensEvent value)
        updateAllergens,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AccountLogInEvent value)? logIn,
    TResult? Function(_AccountLogOutEvent value)? logOut,
    TResult? Function(_AccountUpdateStatusToLoggedIn value)?
        updateStatusToLoggedIn,
    TResult? Function(_AccountUpdateStatusToLoggedOut value)?
        updateStatusToLoggedOut,
    TResult? Function(_AccountUpdateRestrictedProductsEvent value)?
        updateRestrictedProducts,
    TResult? Function(_AccountUpdateAllergensEvent value)? updateAllergens,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AccountLogInEvent value)? logIn,
    TResult Function(_AccountLogOutEvent value)? logOut,
    TResult Function(_AccountUpdateStatusToLoggedIn value)?
        updateStatusToLoggedIn,
    TResult Function(_AccountUpdateStatusToLoggedOut value)?
        updateStatusToLoggedOut,
    TResult Function(_AccountUpdateRestrictedProductsEvent value)?
        updateRestrictedProducts,
    TResult Function(_AccountUpdateAllergensEvent value)? updateAllergens,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountEventCopyWith<$Res> {
  factory $AccountEventCopyWith(
          AccountEvent value, $Res Function(AccountEvent) then) =
      _$AccountEventCopyWithImpl<$Res, AccountEvent>;
}

/// @nodoc
class _$AccountEventCopyWithImpl<$Res, $Val extends AccountEvent>
    implements $AccountEventCopyWith<$Res> {
  _$AccountEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_AccountLogInEventCopyWith<$Res> {
  factory _$$_AccountLogInEventCopyWith(_$_AccountLogInEvent value,
          $Res Function(_$_AccountLogInEvent) then) =
      __$$_AccountLogInEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AccountLogInEventCopyWithImpl<$Res>
    extends _$AccountEventCopyWithImpl<$Res, _$_AccountLogInEvent>
    implements _$$_AccountLogInEventCopyWith<$Res> {
  __$$_AccountLogInEventCopyWithImpl(
      _$_AccountLogInEvent _value, $Res Function(_$_AccountLogInEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_AccountLogInEvent implements _AccountLogInEvent {
  const _$_AccountLogInEvent();

  @override
  String toString() {
    return 'AccountEvent.logIn()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_AccountLogInEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() logIn,
    required TResult Function() logOut,
    required TResult Function() updateStatusToLoggedIn,
    required TResult Function() updateStatusToLoggedOut,
    required TResult Function(
            Map<SelectableModel<ProductType>, List<SelectableModel<Ingredient>>>
                restrictedProducts)
        updateRestrictedProducts,
    required TResult Function(List<SelectableModel<Allergens>> allergensList)
        updateAllergens,
  }) {
    return logIn();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? logIn,
    TResult? Function()? logOut,
    TResult? Function()? updateStatusToLoggedIn,
    TResult? Function()? updateStatusToLoggedOut,
    TResult? Function(
            Map<SelectableModel<ProductType>, List<SelectableModel<Ingredient>>>
                restrictedProducts)?
        updateRestrictedProducts,
    TResult? Function(List<SelectableModel<Allergens>> allergensList)?
        updateAllergens,
  }) {
    return logIn?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? logIn,
    TResult Function()? logOut,
    TResult Function()? updateStatusToLoggedIn,
    TResult Function()? updateStatusToLoggedOut,
    TResult Function(
            Map<SelectableModel<ProductType>, List<SelectableModel<Ingredient>>>
                restrictedProducts)?
        updateRestrictedProducts,
    TResult Function(List<SelectableModel<Allergens>> allergensList)?
        updateAllergens,
    required TResult orElse(),
  }) {
    if (logIn != null) {
      return logIn();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AccountLogInEvent value) logIn,
    required TResult Function(_AccountLogOutEvent value) logOut,
    required TResult Function(_AccountUpdateStatusToLoggedIn value)
        updateStatusToLoggedIn,
    required TResult Function(_AccountUpdateStatusToLoggedOut value)
        updateStatusToLoggedOut,
    required TResult Function(_AccountUpdateRestrictedProductsEvent value)
        updateRestrictedProducts,
    required TResult Function(_AccountUpdateAllergensEvent value)
        updateAllergens,
  }) {
    return logIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AccountLogInEvent value)? logIn,
    TResult? Function(_AccountLogOutEvent value)? logOut,
    TResult? Function(_AccountUpdateStatusToLoggedIn value)?
        updateStatusToLoggedIn,
    TResult? Function(_AccountUpdateStatusToLoggedOut value)?
        updateStatusToLoggedOut,
    TResult? Function(_AccountUpdateRestrictedProductsEvent value)?
        updateRestrictedProducts,
    TResult? Function(_AccountUpdateAllergensEvent value)? updateAllergens,
  }) {
    return logIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AccountLogInEvent value)? logIn,
    TResult Function(_AccountLogOutEvent value)? logOut,
    TResult Function(_AccountUpdateStatusToLoggedIn value)?
        updateStatusToLoggedIn,
    TResult Function(_AccountUpdateStatusToLoggedOut value)?
        updateStatusToLoggedOut,
    TResult Function(_AccountUpdateRestrictedProductsEvent value)?
        updateRestrictedProducts,
    TResult Function(_AccountUpdateAllergensEvent value)? updateAllergens,
    required TResult orElse(),
  }) {
    if (logIn != null) {
      return logIn(this);
    }
    return orElse();
  }
}

abstract class _AccountLogInEvent implements AccountEvent {
  const factory _AccountLogInEvent() = _$_AccountLogInEvent;
}

/// @nodoc
abstract class _$$_AccountLogOutEventCopyWith<$Res> {
  factory _$$_AccountLogOutEventCopyWith(_$_AccountLogOutEvent value,
          $Res Function(_$_AccountLogOutEvent) then) =
      __$$_AccountLogOutEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AccountLogOutEventCopyWithImpl<$Res>
    extends _$AccountEventCopyWithImpl<$Res, _$_AccountLogOutEvent>
    implements _$$_AccountLogOutEventCopyWith<$Res> {
  __$$_AccountLogOutEventCopyWithImpl(
      _$_AccountLogOutEvent _value, $Res Function(_$_AccountLogOutEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_AccountLogOutEvent implements _AccountLogOutEvent {
  const _$_AccountLogOutEvent();

  @override
  String toString() {
    return 'AccountEvent.logOut()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_AccountLogOutEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() logIn,
    required TResult Function() logOut,
    required TResult Function() updateStatusToLoggedIn,
    required TResult Function() updateStatusToLoggedOut,
    required TResult Function(
            Map<SelectableModel<ProductType>, List<SelectableModel<Ingredient>>>
                restrictedProducts)
        updateRestrictedProducts,
    required TResult Function(List<SelectableModel<Allergens>> allergensList)
        updateAllergens,
  }) {
    return logOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? logIn,
    TResult? Function()? logOut,
    TResult? Function()? updateStatusToLoggedIn,
    TResult? Function()? updateStatusToLoggedOut,
    TResult? Function(
            Map<SelectableModel<ProductType>, List<SelectableModel<Ingredient>>>
                restrictedProducts)?
        updateRestrictedProducts,
    TResult? Function(List<SelectableModel<Allergens>> allergensList)?
        updateAllergens,
  }) {
    return logOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? logIn,
    TResult Function()? logOut,
    TResult Function()? updateStatusToLoggedIn,
    TResult Function()? updateStatusToLoggedOut,
    TResult Function(
            Map<SelectableModel<ProductType>, List<SelectableModel<Ingredient>>>
                restrictedProducts)?
        updateRestrictedProducts,
    TResult Function(List<SelectableModel<Allergens>> allergensList)?
        updateAllergens,
    required TResult orElse(),
  }) {
    if (logOut != null) {
      return logOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AccountLogInEvent value) logIn,
    required TResult Function(_AccountLogOutEvent value) logOut,
    required TResult Function(_AccountUpdateStatusToLoggedIn value)
        updateStatusToLoggedIn,
    required TResult Function(_AccountUpdateStatusToLoggedOut value)
        updateStatusToLoggedOut,
    required TResult Function(_AccountUpdateRestrictedProductsEvent value)
        updateRestrictedProducts,
    required TResult Function(_AccountUpdateAllergensEvent value)
        updateAllergens,
  }) {
    return logOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AccountLogInEvent value)? logIn,
    TResult? Function(_AccountLogOutEvent value)? logOut,
    TResult? Function(_AccountUpdateStatusToLoggedIn value)?
        updateStatusToLoggedIn,
    TResult? Function(_AccountUpdateStatusToLoggedOut value)?
        updateStatusToLoggedOut,
    TResult? Function(_AccountUpdateRestrictedProductsEvent value)?
        updateRestrictedProducts,
    TResult? Function(_AccountUpdateAllergensEvent value)? updateAllergens,
  }) {
    return logOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AccountLogInEvent value)? logIn,
    TResult Function(_AccountLogOutEvent value)? logOut,
    TResult Function(_AccountUpdateStatusToLoggedIn value)?
        updateStatusToLoggedIn,
    TResult Function(_AccountUpdateStatusToLoggedOut value)?
        updateStatusToLoggedOut,
    TResult Function(_AccountUpdateRestrictedProductsEvent value)?
        updateRestrictedProducts,
    TResult Function(_AccountUpdateAllergensEvent value)? updateAllergens,
    required TResult orElse(),
  }) {
    if (logOut != null) {
      return logOut(this);
    }
    return orElse();
  }
}

abstract class _AccountLogOutEvent implements AccountEvent {
  const factory _AccountLogOutEvent() = _$_AccountLogOutEvent;
}

/// @nodoc
abstract class _$$_AccountUpdateStatusToLoggedInCopyWith<$Res> {
  factory _$$_AccountUpdateStatusToLoggedInCopyWith(
          _$_AccountUpdateStatusToLoggedIn value,
          $Res Function(_$_AccountUpdateStatusToLoggedIn) then) =
      __$$_AccountUpdateStatusToLoggedInCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AccountUpdateStatusToLoggedInCopyWithImpl<$Res>
    extends _$AccountEventCopyWithImpl<$Res, _$_AccountUpdateStatusToLoggedIn>
    implements _$$_AccountUpdateStatusToLoggedInCopyWith<$Res> {
  __$$_AccountUpdateStatusToLoggedInCopyWithImpl(
      _$_AccountUpdateStatusToLoggedIn _value,
      $Res Function(_$_AccountUpdateStatusToLoggedIn) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_AccountUpdateStatusToLoggedIn
    implements _AccountUpdateStatusToLoggedIn {
  const _$_AccountUpdateStatusToLoggedIn();

  @override
  String toString() {
    return 'AccountEvent.updateStatusToLoggedIn()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AccountUpdateStatusToLoggedIn);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() logIn,
    required TResult Function() logOut,
    required TResult Function() updateStatusToLoggedIn,
    required TResult Function() updateStatusToLoggedOut,
    required TResult Function(
            Map<SelectableModel<ProductType>, List<SelectableModel<Ingredient>>>
                restrictedProducts)
        updateRestrictedProducts,
    required TResult Function(List<SelectableModel<Allergens>> allergensList)
        updateAllergens,
  }) {
    return updateStatusToLoggedIn();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? logIn,
    TResult? Function()? logOut,
    TResult? Function()? updateStatusToLoggedIn,
    TResult? Function()? updateStatusToLoggedOut,
    TResult? Function(
            Map<SelectableModel<ProductType>, List<SelectableModel<Ingredient>>>
                restrictedProducts)?
        updateRestrictedProducts,
    TResult? Function(List<SelectableModel<Allergens>> allergensList)?
        updateAllergens,
  }) {
    return updateStatusToLoggedIn?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? logIn,
    TResult Function()? logOut,
    TResult Function()? updateStatusToLoggedIn,
    TResult Function()? updateStatusToLoggedOut,
    TResult Function(
            Map<SelectableModel<ProductType>, List<SelectableModel<Ingredient>>>
                restrictedProducts)?
        updateRestrictedProducts,
    TResult Function(List<SelectableModel<Allergens>> allergensList)?
        updateAllergens,
    required TResult orElse(),
  }) {
    if (updateStatusToLoggedIn != null) {
      return updateStatusToLoggedIn();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AccountLogInEvent value) logIn,
    required TResult Function(_AccountLogOutEvent value) logOut,
    required TResult Function(_AccountUpdateStatusToLoggedIn value)
        updateStatusToLoggedIn,
    required TResult Function(_AccountUpdateStatusToLoggedOut value)
        updateStatusToLoggedOut,
    required TResult Function(_AccountUpdateRestrictedProductsEvent value)
        updateRestrictedProducts,
    required TResult Function(_AccountUpdateAllergensEvent value)
        updateAllergens,
  }) {
    return updateStatusToLoggedIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AccountLogInEvent value)? logIn,
    TResult? Function(_AccountLogOutEvent value)? logOut,
    TResult? Function(_AccountUpdateStatusToLoggedIn value)?
        updateStatusToLoggedIn,
    TResult? Function(_AccountUpdateStatusToLoggedOut value)?
        updateStatusToLoggedOut,
    TResult? Function(_AccountUpdateRestrictedProductsEvent value)?
        updateRestrictedProducts,
    TResult? Function(_AccountUpdateAllergensEvent value)? updateAllergens,
  }) {
    return updateStatusToLoggedIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AccountLogInEvent value)? logIn,
    TResult Function(_AccountLogOutEvent value)? logOut,
    TResult Function(_AccountUpdateStatusToLoggedIn value)?
        updateStatusToLoggedIn,
    TResult Function(_AccountUpdateStatusToLoggedOut value)?
        updateStatusToLoggedOut,
    TResult Function(_AccountUpdateRestrictedProductsEvent value)?
        updateRestrictedProducts,
    TResult Function(_AccountUpdateAllergensEvent value)? updateAllergens,
    required TResult orElse(),
  }) {
    if (updateStatusToLoggedIn != null) {
      return updateStatusToLoggedIn(this);
    }
    return orElse();
  }
}

abstract class _AccountUpdateStatusToLoggedIn implements AccountEvent {
  const factory _AccountUpdateStatusToLoggedIn() =
      _$_AccountUpdateStatusToLoggedIn;
}

/// @nodoc
abstract class _$$_AccountUpdateStatusToLoggedOutCopyWith<$Res> {
  factory _$$_AccountUpdateStatusToLoggedOutCopyWith(
          _$_AccountUpdateStatusToLoggedOut value,
          $Res Function(_$_AccountUpdateStatusToLoggedOut) then) =
      __$$_AccountUpdateStatusToLoggedOutCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AccountUpdateStatusToLoggedOutCopyWithImpl<$Res>
    extends _$AccountEventCopyWithImpl<$Res, _$_AccountUpdateStatusToLoggedOut>
    implements _$$_AccountUpdateStatusToLoggedOutCopyWith<$Res> {
  __$$_AccountUpdateStatusToLoggedOutCopyWithImpl(
      _$_AccountUpdateStatusToLoggedOut _value,
      $Res Function(_$_AccountUpdateStatusToLoggedOut) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_AccountUpdateStatusToLoggedOut
    implements _AccountUpdateStatusToLoggedOut {
  const _$_AccountUpdateStatusToLoggedOut();

  @override
  String toString() {
    return 'AccountEvent.updateStatusToLoggedOut()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AccountUpdateStatusToLoggedOut);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() logIn,
    required TResult Function() logOut,
    required TResult Function() updateStatusToLoggedIn,
    required TResult Function() updateStatusToLoggedOut,
    required TResult Function(
            Map<SelectableModel<ProductType>, List<SelectableModel<Ingredient>>>
                restrictedProducts)
        updateRestrictedProducts,
    required TResult Function(List<SelectableModel<Allergens>> allergensList)
        updateAllergens,
  }) {
    return updateStatusToLoggedOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? logIn,
    TResult? Function()? logOut,
    TResult? Function()? updateStatusToLoggedIn,
    TResult? Function()? updateStatusToLoggedOut,
    TResult? Function(
            Map<SelectableModel<ProductType>, List<SelectableModel<Ingredient>>>
                restrictedProducts)?
        updateRestrictedProducts,
    TResult? Function(List<SelectableModel<Allergens>> allergensList)?
        updateAllergens,
  }) {
    return updateStatusToLoggedOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? logIn,
    TResult Function()? logOut,
    TResult Function()? updateStatusToLoggedIn,
    TResult Function()? updateStatusToLoggedOut,
    TResult Function(
            Map<SelectableModel<ProductType>, List<SelectableModel<Ingredient>>>
                restrictedProducts)?
        updateRestrictedProducts,
    TResult Function(List<SelectableModel<Allergens>> allergensList)?
        updateAllergens,
    required TResult orElse(),
  }) {
    if (updateStatusToLoggedOut != null) {
      return updateStatusToLoggedOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AccountLogInEvent value) logIn,
    required TResult Function(_AccountLogOutEvent value) logOut,
    required TResult Function(_AccountUpdateStatusToLoggedIn value)
        updateStatusToLoggedIn,
    required TResult Function(_AccountUpdateStatusToLoggedOut value)
        updateStatusToLoggedOut,
    required TResult Function(_AccountUpdateRestrictedProductsEvent value)
        updateRestrictedProducts,
    required TResult Function(_AccountUpdateAllergensEvent value)
        updateAllergens,
  }) {
    return updateStatusToLoggedOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AccountLogInEvent value)? logIn,
    TResult? Function(_AccountLogOutEvent value)? logOut,
    TResult? Function(_AccountUpdateStatusToLoggedIn value)?
        updateStatusToLoggedIn,
    TResult? Function(_AccountUpdateStatusToLoggedOut value)?
        updateStatusToLoggedOut,
    TResult? Function(_AccountUpdateRestrictedProductsEvent value)?
        updateRestrictedProducts,
    TResult? Function(_AccountUpdateAllergensEvent value)? updateAllergens,
  }) {
    return updateStatusToLoggedOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AccountLogInEvent value)? logIn,
    TResult Function(_AccountLogOutEvent value)? logOut,
    TResult Function(_AccountUpdateStatusToLoggedIn value)?
        updateStatusToLoggedIn,
    TResult Function(_AccountUpdateStatusToLoggedOut value)?
        updateStatusToLoggedOut,
    TResult Function(_AccountUpdateRestrictedProductsEvent value)?
        updateRestrictedProducts,
    TResult Function(_AccountUpdateAllergensEvent value)? updateAllergens,
    required TResult orElse(),
  }) {
    if (updateStatusToLoggedOut != null) {
      return updateStatusToLoggedOut(this);
    }
    return orElse();
  }
}

abstract class _AccountUpdateStatusToLoggedOut implements AccountEvent {
  const factory _AccountUpdateStatusToLoggedOut() =
      _$_AccountUpdateStatusToLoggedOut;
}

/// @nodoc
abstract class _$$_AccountUpdateRestrictedProductsEventCopyWith<$Res> {
  factory _$$_AccountUpdateRestrictedProductsEventCopyWith(
          _$_AccountUpdateRestrictedProductsEvent value,
          $Res Function(_$_AccountUpdateRestrictedProductsEvent) then) =
      __$$_AccountUpdateRestrictedProductsEventCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {Map<SelectableModel<ProductType>, List<SelectableModel<Ingredient>>>
          restrictedProducts});
}

/// @nodoc
class __$$_AccountUpdateRestrictedProductsEventCopyWithImpl<$Res>
    extends _$AccountEventCopyWithImpl<$Res,
        _$_AccountUpdateRestrictedProductsEvent>
    implements _$$_AccountUpdateRestrictedProductsEventCopyWith<$Res> {
  __$$_AccountUpdateRestrictedProductsEventCopyWithImpl(
      _$_AccountUpdateRestrictedProductsEvent _value,
      $Res Function(_$_AccountUpdateRestrictedProductsEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? restrictedProducts = null,
  }) {
    return _then(_$_AccountUpdateRestrictedProductsEvent(
      restrictedProducts: null == restrictedProducts
          ? _value._restrictedProducts
          : restrictedProducts // ignore: cast_nullable_to_non_nullable
              as Map<SelectableModel<ProductType>,
                  List<SelectableModel<Ingredient>>>,
    ));
  }
}

/// @nodoc

class _$_AccountUpdateRestrictedProductsEvent
    implements _AccountUpdateRestrictedProductsEvent {
  const _$_AccountUpdateRestrictedProductsEvent(
      {required final Map<SelectableModel<ProductType>,
              List<SelectableModel<Ingredient>>>
          restrictedProducts})
      : _restrictedProducts = restrictedProducts;

  final Map<SelectableModel<ProductType>, List<SelectableModel<Ingredient>>>
      _restrictedProducts;
  @override
  Map<SelectableModel<ProductType>, List<SelectableModel<Ingredient>>>
      get restrictedProducts {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_restrictedProducts);
  }

  @override
  String toString() {
    return 'AccountEvent.updateRestrictedProducts(restrictedProducts: $restrictedProducts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AccountUpdateRestrictedProductsEvent &&
            const DeepCollectionEquality()
                .equals(other._restrictedProducts, _restrictedProducts));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_restrictedProducts));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AccountUpdateRestrictedProductsEventCopyWith<
          _$_AccountUpdateRestrictedProductsEvent>
      get copyWith => __$$_AccountUpdateRestrictedProductsEventCopyWithImpl<
          _$_AccountUpdateRestrictedProductsEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() logIn,
    required TResult Function() logOut,
    required TResult Function() updateStatusToLoggedIn,
    required TResult Function() updateStatusToLoggedOut,
    required TResult Function(
            Map<SelectableModel<ProductType>, List<SelectableModel<Ingredient>>>
                restrictedProducts)
        updateRestrictedProducts,
    required TResult Function(List<SelectableModel<Allergens>> allergensList)
        updateAllergens,
  }) {
    return updateRestrictedProducts(restrictedProducts);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? logIn,
    TResult? Function()? logOut,
    TResult? Function()? updateStatusToLoggedIn,
    TResult? Function()? updateStatusToLoggedOut,
    TResult? Function(
            Map<SelectableModel<ProductType>, List<SelectableModel<Ingredient>>>
                restrictedProducts)?
        updateRestrictedProducts,
    TResult? Function(List<SelectableModel<Allergens>> allergensList)?
        updateAllergens,
  }) {
    return updateRestrictedProducts?.call(restrictedProducts);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? logIn,
    TResult Function()? logOut,
    TResult Function()? updateStatusToLoggedIn,
    TResult Function()? updateStatusToLoggedOut,
    TResult Function(
            Map<SelectableModel<ProductType>, List<SelectableModel<Ingredient>>>
                restrictedProducts)?
        updateRestrictedProducts,
    TResult Function(List<SelectableModel<Allergens>> allergensList)?
        updateAllergens,
    required TResult orElse(),
  }) {
    if (updateRestrictedProducts != null) {
      return updateRestrictedProducts(restrictedProducts);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AccountLogInEvent value) logIn,
    required TResult Function(_AccountLogOutEvent value) logOut,
    required TResult Function(_AccountUpdateStatusToLoggedIn value)
        updateStatusToLoggedIn,
    required TResult Function(_AccountUpdateStatusToLoggedOut value)
        updateStatusToLoggedOut,
    required TResult Function(_AccountUpdateRestrictedProductsEvent value)
        updateRestrictedProducts,
    required TResult Function(_AccountUpdateAllergensEvent value)
        updateAllergens,
  }) {
    return updateRestrictedProducts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AccountLogInEvent value)? logIn,
    TResult? Function(_AccountLogOutEvent value)? logOut,
    TResult? Function(_AccountUpdateStatusToLoggedIn value)?
        updateStatusToLoggedIn,
    TResult? Function(_AccountUpdateStatusToLoggedOut value)?
        updateStatusToLoggedOut,
    TResult? Function(_AccountUpdateRestrictedProductsEvent value)?
        updateRestrictedProducts,
    TResult? Function(_AccountUpdateAllergensEvent value)? updateAllergens,
  }) {
    return updateRestrictedProducts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AccountLogInEvent value)? logIn,
    TResult Function(_AccountLogOutEvent value)? logOut,
    TResult Function(_AccountUpdateStatusToLoggedIn value)?
        updateStatusToLoggedIn,
    TResult Function(_AccountUpdateStatusToLoggedOut value)?
        updateStatusToLoggedOut,
    TResult Function(_AccountUpdateRestrictedProductsEvent value)?
        updateRestrictedProducts,
    TResult Function(_AccountUpdateAllergensEvent value)? updateAllergens,
    required TResult orElse(),
  }) {
    if (updateRestrictedProducts != null) {
      return updateRestrictedProducts(this);
    }
    return orElse();
  }
}

abstract class _AccountUpdateRestrictedProductsEvent implements AccountEvent {
  const factory _AccountUpdateRestrictedProductsEvent(
      {required final Map<SelectableModel<ProductType>,
              List<SelectableModel<Ingredient>>>
          restrictedProducts}) = _$_AccountUpdateRestrictedProductsEvent;

  Map<SelectableModel<ProductType>, List<SelectableModel<Ingredient>>>
      get restrictedProducts;
  @JsonKey(ignore: true)
  _$$_AccountUpdateRestrictedProductsEventCopyWith<
          _$_AccountUpdateRestrictedProductsEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AccountUpdateAllergensEventCopyWith<$Res> {
  factory _$$_AccountUpdateAllergensEventCopyWith(
          _$_AccountUpdateAllergensEvent value,
          $Res Function(_$_AccountUpdateAllergensEvent) then) =
      __$$_AccountUpdateAllergensEventCopyWithImpl<$Res>;
  @useResult
  $Res call({List<SelectableModel<Allergens>> allergensList});
}

/// @nodoc
class __$$_AccountUpdateAllergensEventCopyWithImpl<$Res>
    extends _$AccountEventCopyWithImpl<$Res, _$_AccountUpdateAllergensEvent>
    implements _$$_AccountUpdateAllergensEventCopyWith<$Res> {
  __$$_AccountUpdateAllergensEventCopyWithImpl(
      _$_AccountUpdateAllergensEvent _value,
      $Res Function(_$_AccountUpdateAllergensEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? allergensList = null,
  }) {
    return _then(_$_AccountUpdateAllergensEvent(
      allergensList: null == allergensList
          ? _value._allergensList
          : allergensList // ignore: cast_nullable_to_non_nullable
              as List<SelectableModel<Allergens>>,
    ));
  }
}

/// @nodoc

class _$_AccountUpdateAllergensEvent implements _AccountUpdateAllergensEvent {
  const _$_AccountUpdateAllergensEvent(
      {required final List<SelectableModel<Allergens>> allergensList})
      : _allergensList = allergensList;

  final List<SelectableModel<Allergens>> _allergensList;
  @override
  List<SelectableModel<Allergens>> get allergensList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_allergensList);
  }

  @override
  String toString() {
    return 'AccountEvent.updateAllergens(allergensList: $allergensList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AccountUpdateAllergensEvent &&
            const DeepCollectionEquality()
                .equals(other._allergensList, _allergensList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_allergensList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AccountUpdateAllergensEventCopyWith<_$_AccountUpdateAllergensEvent>
      get copyWith => __$$_AccountUpdateAllergensEventCopyWithImpl<
          _$_AccountUpdateAllergensEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() logIn,
    required TResult Function() logOut,
    required TResult Function() updateStatusToLoggedIn,
    required TResult Function() updateStatusToLoggedOut,
    required TResult Function(
            Map<SelectableModel<ProductType>, List<SelectableModel<Ingredient>>>
                restrictedProducts)
        updateRestrictedProducts,
    required TResult Function(List<SelectableModel<Allergens>> allergensList)
        updateAllergens,
  }) {
    return updateAllergens(allergensList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? logIn,
    TResult? Function()? logOut,
    TResult? Function()? updateStatusToLoggedIn,
    TResult? Function()? updateStatusToLoggedOut,
    TResult? Function(
            Map<SelectableModel<ProductType>, List<SelectableModel<Ingredient>>>
                restrictedProducts)?
        updateRestrictedProducts,
    TResult? Function(List<SelectableModel<Allergens>> allergensList)?
        updateAllergens,
  }) {
    return updateAllergens?.call(allergensList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? logIn,
    TResult Function()? logOut,
    TResult Function()? updateStatusToLoggedIn,
    TResult Function()? updateStatusToLoggedOut,
    TResult Function(
            Map<SelectableModel<ProductType>, List<SelectableModel<Ingredient>>>
                restrictedProducts)?
        updateRestrictedProducts,
    TResult Function(List<SelectableModel<Allergens>> allergensList)?
        updateAllergens,
    required TResult orElse(),
  }) {
    if (updateAllergens != null) {
      return updateAllergens(allergensList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AccountLogInEvent value) logIn,
    required TResult Function(_AccountLogOutEvent value) logOut,
    required TResult Function(_AccountUpdateStatusToLoggedIn value)
        updateStatusToLoggedIn,
    required TResult Function(_AccountUpdateStatusToLoggedOut value)
        updateStatusToLoggedOut,
    required TResult Function(_AccountUpdateRestrictedProductsEvent value)
        updateRestrictedProducts,
    required TResult Function(_AccountUpdateAllergensEvent value)
        updateAllergens,
  }) {
    return updateAllergens(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AccountLogInEvent value)? logIn,
    TResult? Function(_AccountLogOutEvent value)? logOut,
    TResult? Function(_AccountUpdateStatusToLoggedIn value)?
        updateStatusToLoggedIn,
    TResult? Function(_AccountUpdateStatusToLoggedOut value)?
        updateStatusToLoggedOut,
    TResult? Function(_AccountUpdateRestrictedProductsEvent value)?
        updateRestrictedProducts,
    TResult? Function(_AccountUpdateAllergensEvent value)? updateAllergens,
  }) {
    return updateAllergens?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AccountLogInEvent value)? logIn,
    TResult Function(_AccountLogOutEvent value)? logOut,
    TResult Function(_AccountUpdateStatusToLoggedIn value)?
        updateStatusToLoggedIn,
    TResult Function(_AccountUpdateStatusToLoggedOut value)?
        updateStatusToLoggedOut,
    TResult Function(_AccountUpdateRestrictedProductsEvent value)?
        updateRestrictedProducts,
    TResult Function(_AccountUpdateAllergensEvent value)? updateAllergens,
    required TResult orElse(),
  }) {
    if (updateAllergens != null) {
      return updateAllergens(this);
    }
    return orElse();
  }
}

abstract class _AccountUpdateAllergensEvent implements AccountEvent {
  const factory _AccountUpdateAllergensEvent(
          {required final List<SelectableModel<Allergens>> allergensList}) =
      _$_AccountUpdateAllergensEvent;

  List<SelectableModel<Allergens>> get allergensList;
  @JsonKey(ignore: true)
  _$$_AccountUpdateAllergensEventCopyWith<_$_AccountUpdateAllergensEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AccountState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(
            ProfileModel profile,
            List<SelectableModel<Allergens>> allergensList,
            Map<SelectableModel<ProductType>, List<SelectableModel<Ingredient>>>
                restrictedProducts)
        loggedIn,
    required TResult Function() loggedOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(
            ProfileModel profile,
            List<SelectableModel<Allergens>> allergensList,
            Map<SelectableModel<ProductType>, List<SelectableModel<Ingredient>>>
                restrictedProducts)?
        loggedIn,
    TResult? Function()? loggedOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(
            ProfileModel profile,
            List<SelectableModel<Allergens>> allergensList,
            Map<SelectableModel<ProductType>, List<SelectableModel<Ingredient>>>
                restrictedProducts)?
        loggedIn,
    TResult Function()? loggedOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AccountInitialState value) init,
    required TResult Function(AccountLoggedInState value) loggedIn,
    required TResult Function(AccountLoggedOutState value) loggedOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AccountInitialState value)? init,
    TResult? Function(AccountLoggedInState value)? loggedIn,
    TResult? Function(AccountLoggedOutState value)? loggedOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AccountInitialState value)? init,
    TResult Function(AccountLoggedInState value)? loggedIn,
    TResult Function(AccountLoggedOutState value)? loggedOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountStateCopyWith<$Res> {
  factory $AccountStateCopyWith(
          AccountState value, $Res Function(AccountState) then) =
      _$AccountStateCopyWithImpl<$Res, AccountState>;
}

/// @nodoc
class _$AccountStateCopyWithImpl<$Res, $Val extends AccountState>
    implements $AccountStateCopyWith<$Res> {
  _$AccountStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AccountInitialStateCopyWith<$Res> {
  factory _$$AccountInitialStateCopyWith(_$AccountInitialState value,
          $Res Function(_$AccountInitialState) then) =
      __$$AccountInitialStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AccountInitialStateCopyWithImpl<$Res>
    extends _$AccountStateCopyWithImpl<$Res, _$AccountInitialState>
    implements _$$AccountInitialStateCopyWith<$Res> {
  __$$AccountInitialStateCopyWithImpl(
      _$AccountInitialState _value, $Res Function(_$AccountInitialState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AccountInitialState implements AccountInitialState {
  const _$AccountInitialState();

  @override
  String toString() {
    return 'AccountState.init()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AccountInitialState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(
            ProfileModel profile,
            List<SelectableModel<Allergens>> allergensList,
            Map<SelectableModel<ProductType>, List<SelectableModel<Ingredient>>>
                restrictedProducts)
        loggedIn,
    required TResult Function() loggedOut,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(
            ProfileModel profile,
            List<SelectableModel<Allergens>> allergensList,
            Map<SelectableModel<ProductType>, List<SelectableModel<Ingredient>>>
                restrictedProducts)?
        loggedIn,
    TResult? Function()? loggedOut,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(
            ProfileModel profile,
            List<SelectableModel<Allergens>> allergensList,
            Map<SelectableModel<ProductType>, List<SelectableModel<Ingredient>>>
                restrictedProducts)?
        loggedIn,
    TResult Function()? loggedOut,
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
    required TResult Function(AccountInitialState value) init,
    required TResult Function(AccountLoggedInState value) loggedIn,
    required TResult Function(AccountLoggedOutState value) loggedOut,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AccountInitialState value)? init,
    TResult? Function(AccountLoggedInState value)? loggedIn,
    TResult? Function(AccountLoggedOutState value)? loggedOut,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AccountInitialState value)? init,
    TResult Function(AccountLoggedInState value)? loggedIn,
    TResult Function(AccountLoggedOutState value)? loggedOut,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class AccountInitialState implements AccountState {
  const factory AccountInitialState() = _$AccountInitialState;
}

/// @nodoc
abstract class _$$AccountLoggedInStateCopyWith<$Res> {
  factory _$$AccountLoggedInStateCopyWith(_$AccountLoggedInState value,
          $Res Function(_$AccountLoggedInState) then) =
      __$$AccountLoggedInStateCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {ProfileModel profile,
      List<SelectableModel<Allergens>> allergensList,
      Map<SelectableModel<ProductType>, List<SelectableModel<Ingredient>>>
          restrictedProducts});
}

/// @nodoc
class __$$AccountLoggedInStateCopyWithImpl<$Res>
    extends _$AccountStateCopyWithImpl<$Res, _$AccountLoggedInState>
    implements _$$AccountLoggedInStateCopyWith<$Res> {
  __$$AccountLoggedInStateCopyWithImpl(_$AccountLoggedInState _value,
      $Res Function(_$AccountLoggedInState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? profile = null,
    Object? allergensList = null,
    Object? restrictedProducts = null,
  }) {
    return _then(_$AccountLoggedInState(
      profile: null == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as ProfileModel,
      allergensList: null == allergensList
          ? _value._allergensList
          : allergensList // ignore: cast_nullable_to_non_nullable
              as List<SelectableModel<Allergens>>,
      restrictedProducts: null == restrictedProducts
          ? _value._restrictedProducts
          : restrictedProducts // ignore: cast_nullable_to_non_nullable
              as Map<SelectableModel<ProductType>,
                  List<SelectableModel<Ingredient>>>,
    ));
  }
}

/// @nodoc

class _$AccountLoggedInState implements AccountLoggedInState {
  const _$AccountLoggedInState(
      {required this.profile,
      required final List<SelectableModel<Allergens>> allergensList,
      required final Map<SelectableModel<ProductType>,
              List<SelectableModel<Ingredient>>>
          restrictedProducts})
      : _allergensList = allergensList,
        _restrictedProducts = restrictedProducts;

  @override
  final ProfileModel profile;
  final List<SelectableModel<Allergens>> _allergensList;
  @override
  List<SelectableModel<Allergens>> get allergensList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_allergensList);
  }

  final Map<SelectableModel<ProductType>, List<SelectableModel<Ingredient>>>
      _restrictedProducts;
  @override
  Map<SelectableModel<ProductType>, List<SelectableModel<Ingredient>>>
      get restrictedProducts {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_restrictedProducts);
  }

  @override
  String toString() {
    return 'AccountState.loggedIn(profile: $profile, allergensList: $allergensList, restrictedProducts: $restrictedProducts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountLoggedInState &&
            (identical(other.profile, profile) || other.profile == profile) &&
            const DeepCollectionEquality()
                .equals(other._allergensList, _allergensList) &&
            const DeepCollectionEquality()
                .equals(other._restrictedProducts, _restrictedProducts));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      profile,
      const DeepCollectionEquality().hash(_allergensList),
      const DeepCollectionEquality().hash(_restrictedProducts));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AccountLoggedInStateCopyWith<_$AccountLoggedInState> get copyWith =>
      __$$AccountLoggedInStateCopyWithImpl<_$AccountLoggedInState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(
            ProfileModel profile,
            List<SelectableModel<Allergens>> allergensList,
            Map<SelectableModel<ProductType>, List<SelectableModel<Ingredient>>>
                restrictedProducts)
        loggedIn,
    required TResult Function() loggedOut,
  }) {
    return loggedIn(profile, allergensList, restrictedProducts);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(
            ProfileModel profile,
            List<SelectableModel<Allergens>> allergensList,
            Map<SelectableModel<ProductType>, List<SelectableModel<Ingredient>>>
                restrictedProducts)?
        loggedIn,
    TResult? Function()? loggedOut,
  }) {
    return loggedIn?.call(profile, allergensList, restrictedProducts);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(
            ProfileModel profile,
            List<SelectableModel<Allergens>> allergensList,
            Map<SelectableModel<ProductType>, List<SelectableModel<Ingredient>>>
                restrictedProducts)?
        loggedIn,
    TResult Function()? loggedOut,
    required TResult orElse(),
  }) {
    if (loggedIn != null) {
      return loggedIn(profile, allergensList, restrictedProducts);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AccountInitialState value) init,
    required TResult Function(AccountLoggedInState value) loggedIn,
    required TResult Function(AccountLoggedOutState value) loggedOut,
  }) {
    return loggedIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AccountInitialState value)? init,
    TResult? Function(AccountLoggedInState value)? loggedIn,
    TResult? Function(AccountLoggedOutState value)? loggedOut,
  }) {
    return loggedIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AccountInitialState value)? init,
    TResult Function(AccountLoggedInState value)? loggedIn,
    TResult Function(AccountLoggedOutState value)? loggedOut,
    required TResult orElse(),
  }) {
    if (loggedIn != null) {
      return loggedIn(this);
    }
    return orElse();
  }
}

abstract class AccountLoggedInState implements AccountState {
  const factory AccountLoggedInState(
      {required final ProfileModel profile,
      required final List<SelectableModel<Allergens>> allergensList,
      required final Map<SelectableModel<ProductType>,
              List<SelectableModel<Ingredient>>>
          restrictedProducts}) = _$AccountLoggedInState;

  ProfileModel get profile;
  List<SelectableModel<Allergens>> get allergensList;
  Map<SelectableModel<ProductType>, List<SelectableModel<Ingredient>>>
      get restrictedProducts;
  @JsonKey(ignore: true)
  _$$AccountLoggedInStateCopyWith<_$AccountLoggedInState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AccountLoggedOutStateCopyWith<$Res> {
  factory _$$AccountLoggedOutStateCopyWith(_$AccountLoggedOutState value,
          $Res Function(_$AccountLoggedOutState) then) =
      __$$AccountLoggedOutStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AccountLoggedOutStateCopyWithImpl<$Res>
    extends _$AccountStateCopyWithImpl<$Res, _$AccountLoggedOutState>
    implements _$$AccountLoggedOutStateCopyWith<$Res> {
  __$$AccountLoggedOutStateCopyWithImpl(_$AccountLoggedOutState _value,
      $Res Function(_$AccountLoggedOutState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AccountLoggedOutState implements AccountLoggedOutState {
  const _$AccountLoggedOutState();

  @override
  String toString() {
    return 'AccountState.loggedOut()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AccountLoggedOutState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(
            ProfileModel profile,
            List<SelectableModel<Allergens>> allergensList,
            Map<SelectableModel<ProductType>, List<SelectableModel<Ingredient>>>
                restrictedProducts)
        loggedIn,
    required TResult Function() loggedOut,
  }) {
    return loggedOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(
            ProfileModel profile,
            List<SelectableModel<Allergens>> allergensList,
            Map<SelectableModel<ProductType>, List<SelectableModel<Ingredient>>>
                restrictedProducts)?
        loggedIn,
    TResult? Function()? loggedOut,
  }) {
    return loggedOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(
            ProfileModel profile,
            List<SelectableModel<Allergens>> allergensList,
            Map<SelectableModel<ProductType>, List<SelectableModel<Ingredient>>>
                restrictedProducts)?
        loggedIn,
    TResult Function()? loggedOut,
    required TResult orElse(),
  }) {
    if (loggedOut != null) {
      return loggedOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AccountInitialState value) init,
    required TResult Function(AccountLoggedInState value) loggedIn,
    required TResult Function(AccountLoggedOutState value) loggedOut,
  }) {
    return loggedOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AccountInitialState value)? init,
    TResult? Function(AccountLoggedInState value)? loggedIn,
    TResult? Function(AccountLoggedOutState value)? loggedOut,
  }) {
    return loggedOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AccountInitialState value)? init,
    TResult Function(AccountLoggedInState value)? loggedIn,
    TResult Function(AccountLoggedOutState value)? loggedOut,
    required TResult orElse(),
  }) {
    if (loggedOut != null) {
      return loggedOut(this);
    }
    return orElse();
  }
}

abstract class AccountLoggedOutState implements AccountState {
  const factory AccountLoggedOutState() = _$AccountLoggedOutState;
}
