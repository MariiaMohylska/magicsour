part of 'favorites_bloc.dart';

@freezed
class FavoritesEvent with _$FavoritesEvent {
  const factory FavoritesEvent.updateStatus(String id) = _FavoritesUpdateStatusEvent;
  const factory FavoritesEvent.loadFromCache() = _FavoritesLoadFromCacheEvent;
}