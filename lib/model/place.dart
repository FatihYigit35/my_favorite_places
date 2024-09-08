import 'dart:io';

import 'package:my_favorite_places/model/place_location.dart';
import 'package:uuid/v8.dart';

const uuid = UuidV8();

class Place {
  Place({
    required this.title,
    required this.description,
    required this.image,
    required this.location,
    String? id,
  }) : id = id ?? uuid.generate();

  final String id;
  String title;
  String description;
  File image;
  PlaceLocation location;

  Map<String, Object?> toMap() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'image': image.path,
      'lat': location.latitude,
      'lng': location.longitude,
      'address': location.address,
    };
  }
}
