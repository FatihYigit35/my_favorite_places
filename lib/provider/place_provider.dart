import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../model/place.dart';

class PlaceNotifier extends StateNotifier<List<Place>> {
  PlaceNotifier() : super(const []);

  void addPlace(Place place) {
    final newList = state.toList();
    newList.add(place);
    state = newList;
  }
}

final placeProvider = StateNotifierProvider<PlaceNotifier, List<Place>>(
  (ref) => PlaceNotifier(),
);
