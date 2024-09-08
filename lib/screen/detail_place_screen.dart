import 'package:flutter/material.dart';

import '../model/place.dart';
import '../widget/text_detail_place_screen.dart';

class DetailPlaceScreen extends StatelessWidget {
  const DetailPlaceScreen({super.key, required this.place});

  final Place place;

  @override
  Widget build(BuildContext context) {
    final image = place.image;

    Widget imageWidget = Image.file(
      image,
      fit: BoxFit.fitHeight,
    );

    final latitude = place.location.latitude;
    final longitude = place.location.longitude;
    var locationText = 'No location entered';

    locationText = '$latitude, $longitude';

    return Scaffold(
      appBar: AppBar(
        title: Text(place.title),
      ),
      body: Column(
        children: [
          Stack(
            children: [
              imageWidget,
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(5),
                  decoration:
                      BoxDecoration(color: Colors.black.withOpacity(0.4)),
                  child: TextDetailPlaceScreen(
                    text: 'Location: $locationText',
                  ),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextDetailPlaceScreen(
              text: place.description,
            ),
          ),
        ],
      ),
    );
  }
}
