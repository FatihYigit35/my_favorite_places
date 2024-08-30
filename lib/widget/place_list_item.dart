import 'package:flutter/material.dart';
import 'package:my_favorite_places/model/place_item.dart';
import 'package:my_favorite_places/screen/detail_place_screen.dart';

class PlaceListItem extends StatelessWidget {
  const PlaceListItem({super.key, required this.place});
  final PlaceItem place;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => DetailPlaceScreen(place: place),
          ));
        },
        child: Text(
          place.title ?? 'No title entered',
          style: const TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
