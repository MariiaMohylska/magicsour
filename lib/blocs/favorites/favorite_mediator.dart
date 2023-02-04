import 'dart:async';

class FavoriteMediator {
  final StreamController<List<String>> _linearPlaybackItem = StreamController.broadcast();

  Stream<List<String>> get linearPlaybackItem => _linearPlaybackItem.stream;

  void updateFavoritesList(List<String> newList) {
    _linearPlaybackItem.add(newList);
  }
}
