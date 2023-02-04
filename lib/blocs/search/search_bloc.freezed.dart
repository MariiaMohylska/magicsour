// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'search_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SearchEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() changeToSearch,
    required TResult Function() changeToGenerate,
    required TResult Function(SearchDetailsModel details) search,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? changeToSearch,
    TResult? Function()? changeToGenerate,
    TResult? Function(SearchDetailsModel details)? search,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? changeToSearch,
    TResult Function()? changeToGenerate,
    TResult Function(SearchDetailsModel details)? search,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchToSearchEvent value) changeToSearch,
    required TResult Function(_SearchToGenerateEvent value) changeToGenerate,
    required TResult Function(_SearchSearchEvent value) search,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchToSearchEvent value)? changeToSearch,
    TResult? Function(_SearchToGenerateEvent value)? changeToGenerate,
    TResult? Function(_SearchSearchEvent value)? search,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchToSearchEvent value)? changeToSearch,
    TResult Function(_SearchToGenerateEvent value)? changeToGenerate,
    TResult Function(_SearchSearchEvent value)? search,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchEventCopyWith<$Res> {
  factory $SearchEventCopyWith(
          SearchEvent value, $Res Function(SearchEvent) then) =
      _$SearchEventCopyWithImpl<$Res, SearchEvent>;
}

/// @nodoc
class _$SearchEventCopyWithImpl<$Res, $Val extends SearchEvent>
    implements $SearchEventCopyWith<$Res> {
  _$SearchEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_SearchToSearchEventCopyWith<$Res> {
  factory _$$_SearchToSearchEventCopyWith(_$_SearchToSearchEvent value,
          $Res Function(_$_SearchToSearchEvent) then) =
      __$$_SearchToSearchEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SearchToSearchEventCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res, _$_SearchToSearchEvent>
    implements _$$_SearchToSearchEventCopyWith<$Res> {
  __$$_SearchToSearchEventCopyWithImpl(_$_SearchToSearchEvent _value,
      $Res Function(_$_SearchToSearchEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_SearchToSearchEvent implements _SearchToSearchEvent {
  const _$_SearchToSearchEvent();

  @override
  String toString() {
    return 'SearchEvent.changeToSearch()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SearchToSearchEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() changeToSearch,
    required TResult Function() changeToGenerate,
    required TResult Function(SearchDetailsModel details) search,
  }) {
    return changeToSearch();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? changeToSearch,
    TResult? Function()? changeToGenerate,
    TResult? Function(SearchDetailsModel details)? search,
  }) {
    return changeToSearch?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? changeToSearch,
    TResult Function()? changeToGenerate,
    TResult Function(SearchDetailsModel details)? search,
    required TResult orElse(),
  }) {
    if (changeToSearch != null) {
      return changeToSearch();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchToSearchEvent value) changeToSearch,
    required TResult Function(_SearchToGenerateEvent value) changeToGenerate,
    required TResult Function(_SearchSearchEvent value) search,
  }) {
    return changeToSearch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchToSearchEvent value)? changeToSearch,
    TResult? Function(_SearchToGenerateEvent value)? changeToGenerate,
    TResult? Function(_SearchSearchEvent value)? search,
  }) {
    return changeToSearch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchToSearchEvent value)? changeToSearch,
    TResult Function(_SearchToGenerateEvent value)? changeToGenerate,
    TResult Function(_SearchSearchEvent value)? search,
    required TResult orElse(),
  }) {
    if (changeToSearch != null) {
      return changeToSearch(this);
    }
    return orElse();
  }
}

abstract class _SearchToSearchEvent implements SearchEvent {
  const factory _SearchToSearchEvent() = _$_SearchToSearchEvent;
}

/// @nodoc
abstract class _$$_SearchToGenerateEventCopyWith<$Res> {
  factory _$$_SearchToGenerateEventCopyWith(_$_SearchToGenerateEvent value,
          $Res Function(_$_SearchToGenerateEvent) then) =
      __$$_SearchToGenerateEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SearchToGenerateEventCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res, _$_SearchToGenerateEvent>
    implements _$$_SearchToGenerateEventCopyWith<$Res> {
  __$$_SearchToGenerateEventCopyWithImpl(_$_SearchToGenerateEvent _value,
      $Res Function(_$_SearchToGenerateEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_SearchToGenerateEvent implements _SearchToGenerateEvent {
  const _$_SearchToGenerateEvent();

  @override
  String toString() {
    return 'SearchEvent.changeToGenerate()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SearchToGenerateEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() changeToSearch,
    required TResult Function() changeToGenerate,
    required TResult Function(SearchDetailsModel details) search,
  }) {
    return changeToGenerate();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? changeToSearch,
    TResult? Function()? changeToGenerate,
    TResult? Function(SearchDetailsModel details)? search,
  }) {
    return changeToGenerate?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? changeToSearch,
    TResult Function()? changeToGenerate,
    TResult Function(SearchDetailsModel details)? search,
    required TResult orElse(),
  }) {
    if (changeToGenerate != null) {
      return changeToGenerate();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchToSearchEvent value) changeToSearch,
    required TResult Function(_SearchToGenerateEvent value) changeToGenerate,
    required TResult Function(_SearchSearchEvent value) search,
  }) {
    return changeToGenerate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchToSearchEvent value)? changeToSearch,
    TResult? Function(_SearchToGenerateEvent value)? changeToGenerate,
    TResult? Function(_SearchSearchEvent value)? search,
  }) {
    return changeToGenerate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchToSearchEvent value)? changeToSearch,
    TResult Function(_SearchToGenerateEvent value)? changeToGenerate,
    TResult Function(_SearchSearchEvent value)? search,
    required TResult orElse(),
  }) {
    if (changeToGenerate != null) {
      return changeToGenerate(this);
    }
    return orElse();
  }
}

abstract class _SearchToGenerateEvent implements SearchEvent {
  const factory _SearchToGenerateEvent() = _$_SearchToGenerateEvent;
}

/// @nodoc
abstract class _$$_SearchSearchEventCopyWith<$Res> {
  factory _$$_SearchSearchEventCopyWith(_$_SearchSearchEvent value,
          $Res Function(_$_SearchSearchEvent) then) =
      __$$_SearchSearchEventCopyWithImpl<$Res>;
  @useResult
  $Res call({SearchDetailsModel details});
}

/// @nodoc
class __$$_SearchSearchEventCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res, _$_SearchSearchEvent>
    implements _$$_SearchSearchEventCopyWith<$Res> {
  __$$_SearchSearchEventCopyWithImpl(
      _$_SearchSearchEvent _value, $Res Function(_$_SearchSearchEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? details = null,
  }) {
    return _then(_$_SearchSearchEvent(
      details: null == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as SearchDetailsModel,
    ));
  }
}

/// @nodoc

class _$_SearchSearchEvent implements _SearchSearchEvent {
  const _$_SearchSearchEvent({required this.details});

  @override
  final SearchDetailsModel details;

  @override
  String toString() {
    return 'SearchEvent.search(details: $details)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchSearchEvent &&
            (identical(other.details, details) || other.details == details));
  }

  @override
  int get hashCode => Object.hash(runtimeType, details);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchSearchEventCopyWith<_$_SearchSearchEvent> get copyWith =>
      __$$_SearchSearchEventCopyWithImpl<_$_SearchSearchEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() changeToSearch,
    required TResult Function() changeToGenerate,
    required TResult Function(SearchDetailsModel details) search,
  }) {
    return search(details);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? changeToSearch,
    TResult? Function()? changeToGenerate,
    TResult? Function(SearchDetailsModel details)? search,
  }) {
    return search?.call(details);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? changeToSearch,
    TResult Function()? changeToGenerate,
    TResult Function(SearchDetailsModel details)? search,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(details);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchToSearchEvent value) changeToSearch,
    required TResult Function(_SearchToGenerateEvent value) changeToGenerate,
    required TResult Function(_SearchSearchEvent value) search,
  }) {
    return search(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchToSearchEvent value)? changeToSearch,
    TResult? Function(_SearchToGenerateEvent value)? changeToGenerate,
    TResult? Function(_SearchSearchEvent value)? search,
  }) {
    return search?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchToSearchEvent value)? changeToSearch,
    TResult Function(_SearchToGenerateEvent value)? changeToGenerate,
    TResult Function(_SearchSearchEvent value)? search,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(this);
    }
    return orElse();
  }
}

abstract class _SearchSearchEvent implements SearchEvent {
  const factory _SearchSearchEvent(
      {required final SearchDetailsModel details}) = _$_SearchSearchEvent;

  SearchDetailsModel get details;
  @JsonKey(ignore: true)
  _$$_SearchSearchEventCopyWith<_$_SearchSearchEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SearchState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SearchParametersModel searchParametersModel)
        search,
    required TResult Function(SearchParametersModel searchParametersModel)
        generate,
    required TResult Function() searchResult,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SearchParametersModel searchParametersModel)? search,
    TResult? Function(SearchParametersModel searchParametersModel)? generate,
    TResult? Function()? searchResult,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SearchParametersModel searchParametersModel)? search,
    TResult Function(SearchParametersModel searchParametersModel)? generate,
    TResult Function()? searchResult,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchSearchState value) search,
    required TResult Function(SearchGenerateState value) generate,
    required TResult Function(SearchResultState value) searchResult,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchSearchState value)? search,
    TResult? Function(SearchGenerateState value)? generate,
    TResult? Function(SearchResultState value)? searchResult,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchSearchState value)? search,
    TResult Function(SearchGenerateState value)? generate,
    TResult Function(SearchResultState value)? searchResult,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchStateCopyWith<$Res> {
  factory $SearchStateCopyWith(
          SearchState value, $Res Function(SearchState) then) =
      _$SearchStateCopyWithImpl<$Res, SearchState>;
}

/// @nodoc
class _$SearchStateCopyWithImpl<$Res, $Val extends SearchState>
    implements $SearchStateCopyWith<$Res> {
  _$SearchStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SearchSearchStateCopyWith<$Res> {
  factory _$$SearchSearchStateCopyWith(
          _$SearchSearchState value, $Res Function(_$SearchSearchState) then) =
      __$$SearchSearchStateCopyWithImpl<$Res>;
  @useResult
  $Res call({SearchParametersModel searchParametersModel});
}

/// @nodoc
class __$$SearchSearchStateCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$SearchSearchState>
    implements _$$SearchSearchStateCopyWith<$Res> {
  __$$SearchSearchStateCopyWithImpl(
      _$SearchSearchState _value, $Res Function(_$SearchSearchState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchParametersModel = null,
  }) {
    return _then(_$SearchSearchState(
      searchParametersModel: null == searchParametersModel
          ? _value.searchParametersModel
          : searchParametersModel // ignore: cast_nullable_to_non_nullable
              as SearchParametersModel,
    ));
  }
}

/// @nodoc

class _$SearchSearchState implements SearchSearchState {
  const _$SearchSearchState({required this.searchParametersModel});

  @override
  final SearchParametersModel searchParametersModel;

  @override
  String toString() {
    return 'SearchState.search(searchParametersModel: $searchParametersModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchSearchState &&
            (identical(other.searchParametersModel, searchParametersModel) ||
                other.searchParametersModel == searchParametersModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, searchParametersModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchSearchStateCopyWith<_$SearchSearchState> get copyWith =>
      __$$SearchSearchStateCopyWithImpl<_$SearchSearchState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SearchParametersModel searchParametersModel)
        search,
    required TResult Function(SearchParametersModel searchParametersModel)
        generate,
    required TResult Function() searchResult,
  }) {
    return search(searchParametersModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SearchParametersModel searchParametersModel)? search,
    TResult? Function(SearchParametersModel searchParametersModel)? generate,
    TResult? Function()? searchResult,
  }) {
    return search?.call(searchParametersModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SearchParametersModel searchParametersModel)? search,
    TResult Function(SearchParametersModel searchParametersModel)? generate,
    TResult Function()? searchResult,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(searchParametersModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchSearchState value) search,
    required TResult Function(SearchGenerateState value) generate,
    required TResult Function(SearchResultState value) searchResult,
  }) {
    return search(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchSearchState value)? search,
    TResult? Function(SearchGenerateState value)? generate,
    TResult? Function(SearchResultState value)? searchResult,
  }) {
    return search?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchSearchState value)? search,
    TResult Function(SearchGenerateState value)? generate,
    TResult Function(SearchResultState value)? searchResult,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(this);
    }
    return orElse();
  }
}

abstract class SearchSearchState implements SearchState {
  const factory SearchSearchState(
          {required final SearchParametersModel searchParametersModel}) =
      _$SearchSearchState;

  SearchParametersModel get searchParametersModel;
  @JsonKey(ignore: true)
  _$$SearchSearchStateCopyWith<_$SearchSearchState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchGenerateStateCopyWith<$Res> {
  factory _$$SearchGenerateStateCopyWith(_$SearchGenerateState value,
          $Res Function(_$SearchGenerateState) then) =
      __$$SearchGenerateStateCopyWithImpl<$Res>;
  @useResult
  $Res call({SearchParametersModel searchParametersModel});
}

/// @nodoc
class __$$SearchGenerateStateCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$SearchGenerateState>
    implements _$$SearchGenerateStateCopyWith<$Res> {
  __$$SearchGenerateStateCopyWithImpl(
      _$SearchGenerateState _value, $Res Function(_$SearchGenerateState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchParametersModel = null,
  }) {
    return _then(_$SearchGenerateState(
      searchParametersModel: null == searchParametersModel
          ? _value.searchParametersModel
          : searchParametersModel // ignore: cast_nullable_to_non_nullable
              as SearchParametersModel,
    ));
  }
}

/// @nodoc

class _$SearchGenerateState implements SearchGenerateState {
  const _$SearchGenerateState({required this.searchParametersModel});

  @override
  final SearchParametersModel searchParametersModel;

  @override
  String toString() {
    return 'SearchState.generate(searchParametersModel: $searchParametersModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchGenerateState &&
            (identical(other.searchParametersModel, searchParametersModel) ||
                other.searchParametersModel == searchParametersModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, searchParametersModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchGenerateStateCopyWith<_$SearchGenerateState> get copyWith =>
      __$$SearchGenerateStateCopyWithImpl<_$SearchGenerateState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SearchParametersModel searchParametersModel)
        search,
    required TResult Function(SearchParametersModel searchParametersModel)
        generate,
    required TResult Function() searchResult,
  }) {
    return generate(searchParametersModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SearchParametersModel searchParametersModel)? search,
    TResult? Function(SearchParametersModel searchParametersModel)? generate,
    TResult? Function()? searchResult,
  }) {
    return generate?.call(searchParametersModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SearchParametersModel searchParametersModel)? search,
    TResult Function(SearchParametersModel searchParametersModel)? generate,
    TResult Function()? searchResult,
    required TResult orElse(),
  }) {
    if (generate != null) {
      return generate(searchParametersModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchSearchState value) search,
    required TResult Function(SearchGenerateState value) generate,
    required TResult Function(SearchResultState value) searchResult,
  }) {
    return generate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchSearchState value)? search,
    TResult? Function(SearchGenerateState value)? generate,
    TResult? Function(SearchResultState value)? searchResult,
  }) {
    return generate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchSearchState value)? search,
    TResult Function(SearchGenerateState value)? generate,
    TResult Function(SearchResultState value)? searchResult,
    required TResult orElse(),
  }) {
    if (generate != null) {
      return generate(this);
    }
    return orElse();
  }
}

abstract class SearchGenerateState implements SearchState {
  const factory SearchGenerateState(
          {required final SearchParametersModel searchParametersModel}) =
      _$SearchGenerateState;

  SearchParametersModel get searchParametersModel;
  @JsonKey(ignore: true)
  _$$SearchGenerateStateCopyWith<_$SearchGenerateState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchResultStateCopyWith<$Res> {
  factory _$$SearchResultStateCopyWith(
          _$SearchResultState value, $Res Function(_$SearchResultState) then) =
      __$$SearchResultStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SearchResultStateCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$SearchResultState>
    implements _$$SearchResultStateCopyWith<$Res> {
  __$$SearchResultStateCopyWithImpl(
      _$SearchResultState _value, $Res Function(_$SearchResultState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SearchResultState implements SearchResultState {
  const _$SearchResultState();

  @override
  String toString() {
    return 'SearchState.searchResult()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SearchResultState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SearchParametersModel searchParametersModel)
        search,
    required TResult Function(SearchParametersModel searchParametersModel)
        generate,
    required TResult Function() searchResult,
  }) {
    return searchResult();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SearchParametersModel searchParametersModel)? search,
    TResult? Function(SearchParametersModel searchParametersModel)? generate,
    TResult? Function()? searchResult,
  }) {
    return searchResult?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SearchParametersModel searchParametersModel)? search,
    TResult Function(SearchParametersModel searchParametersModel)? generate,
    TResult Function()? searchResult,
    required TResult orElse(),
  }) {
    if (searchResult != null) {
      return searchResult();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchSearchState value) search,
    required TResult Function(SearchGenerateState value) generate,
    required TResult Function(SearchResultState value) searchResult,
  }) {
    return searchResult(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchSearchState value)? search,
    TResult? Function(SearchGenerateState value)? generate,
    TResult? Function(SearchResultState value)? searchResult,
  }) {
    return searchResult?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchSearchState value)? search,
    TResult Function(SearchGenerateState value)? generate,
    TResult Function(SearchResultState value)? searchResult,
    required TResult orElse(),
  }) {
    if (searchResult != null) {
      return searchResult(this);
    }
    return orElse();
  }
}

abstract class SearchResultState implements SearchState {
  const factory SearchResultState() = _$SearchResultState;
}
