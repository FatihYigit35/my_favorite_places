import 'package:flutter/material.dart';

import '../data/constants.dart';
import '../model/place_item.dart';

class DetailPlaceScreen extends StatelessWidget {
  const DetailPlaceScreen({super.key, required this.place});

  final PlaceItem place;

  @override
  Widget build(BuildContext context) {
    final image = place.image;

    Widget imageWidget = Image.asset(placeholderImage);

    if (image != null) {
      imageWidget = Image.file(
        image,
        fit: BoxFit.cover,
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(place.title ?? 'No title entered'),
      ),
      body: Center(
        child: Column(
          children: [
            Expanded(child: imageWidget),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                place.description ?? 'No description entered',
                style: const TextStyle(fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
