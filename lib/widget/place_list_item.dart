import 'package:flutter/material.dart';

import '../model/place.dart';
import '../screen/detail_place_screen.dart';

class PlaceListItem extends StatelessWidget {
  const PlaceListItem({super.key, required this.place});
  final Place place;

  @override
  Widget build(BuildContext context) {
    final image = place.image;

    return ListTile(
      leading: CircleAvatar(
        radius: 30,
        backgroundImage: FileImage(image),
      ),
      title: Text(
        place.title,
        style: const TextStyle(
          fontSize: 20,
        ),
      ),
      subtitle: Text(place.description),
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => DetailPlaceScreen(place: place),
        ));
      },
    );
  }
}
