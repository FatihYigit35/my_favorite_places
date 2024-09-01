import 'package:uuid/v8.dart';

const uuid = UuidV8();

class PlaceItem {
  PlaceItem({
    this.title,
    this.description,
    this.location,
    this.images,
  }) : id = uuid.generate();

  final String id;
  String? title;
  String? description;
  String? location;
  List<Uri>? images;
}
