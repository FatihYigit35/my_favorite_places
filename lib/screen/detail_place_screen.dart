import 'package:flutter/material.dart';
import 'package:my_favorite_places/model/place_item.dart';

class DetailPlaceScreen extends StatelessWidget {
  const DetailPlaceScreen({super.key, required this.place});

  final PlaceItem place;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(place.title ?? 'No title entered'),
      ),
      body: Center(
        child: Text(
          place.description ?? 'No description entered',
          style: const TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
