import 'dart:io';

import 'package:my_favorite_places/model/place_location.dart';
import 'package:uuid/v8.dart';

const uuid = UuidV8();

class Place {
  Place({
    this.title,
    this.description,
    this.image,
    this.location,
    String? id,
  }) : id = id ?? uuid.generate();

  final String id;
  String? title;
  String? description;
  File? image;
  PlaceLocation? location;
}
