import 'dart:io';

import 'package:uuid/v8.dart';

const uuid = UuidV8();

class PlaceItem {
  PlaceItem({
    this.title,
    this.description,
    this.location,
    this.image,
  }) : id = uuid.generate();

  final String id;
  String? title;
  String? description;
  String? location;
  File? image;
}
