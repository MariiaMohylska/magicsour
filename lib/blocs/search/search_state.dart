part of 'search_bloc.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState.search({
    required SearchParametersModel searchParametersModel,
  }) = SearchSearchState;

  const factory SearchState.generate({
    required SearchParametersModel searchParametersModel
  }) = SearchGenerateState;

  const factory SearchState.searchResult() = SearchResultState;

}
