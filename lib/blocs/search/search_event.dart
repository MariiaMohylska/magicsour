part of 'search_bloc.dart';

@freezed
class SearchEvent with _$SearchEvent {
  const factory SearchEvent.changeToSearch() = _SearchToSearchEvent;
  const factory SearchEvent.changeToGenerate() = _SearchToGenerateEvent;
  const factory SearchEvent.search({required SearchDetailsModel details}) = _SearchSearchEvent;
}