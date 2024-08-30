import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_favorite_places/model/place_item.dart';

class PlaceNotifier extends StateNotifier<List<PlaceItem>> {
  PlaceNotifier() : super([]);

  void addPlace(PlaceItem place) {
    final newList = state.toList();
    newList.add(place);
    state = newList;
  }
}

final placeProvider = StateNotifierProvider<PlaceNotifier, List<PlaceItem>>(
  (ref) => PlaceNotifier(),
);
