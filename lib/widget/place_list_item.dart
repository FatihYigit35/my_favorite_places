import 'package:flutter/material.dart';
import 'package:my_favorite_places/data/constants.dart';

import '../model/place.dart';
import '../screen/detail_place_screen.dart';

class PlaceListItem extends StatelessWidget {
  const PlaceListItem({super.key, required this.place});
  final Place place;

  @override
  Widget build(BuildContext context) {
    //   return Padding(
    //     padding: const EdgeInsets.all(8.0),
    //     child: InkWell(
    //       onTap: () {
    //         Navigator.of(context).push(MaterialPageRoute(
    //           builder: (context) => DetailPlaceScreen(place: place),
    //         ));
    //       },
    //       child: Text(
    //         place.title ?? 'No title entered',
    //         style: const TextStyle(fontSize: 20),
    //       ),
    //     ),
    //   );
    final image = place.image;

    return ListTile(
      leading: CircleAvatar(
        radius: 30,
        backgroundImage: image != null
            ? FileImage(image)
            : const AssetImage(placeholderImage),
      ),
      title: Text(
        place.title ?? 'No title entered',
        style: const TextStyle(
          fontSize: 20,
        ),
      ),
      subtitle: Text(place.description ?? 'No description entered'),
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => DetailPlaceScreen(place: place),
        ));
      },
    );
  }
}
