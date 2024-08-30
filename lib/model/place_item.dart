class PlaceItem {
  const PlaceItem({
    this.title,
    this.description,
    this.location,
    this.images,
  });

  final String? title;
  final String? description;
  final String? location;
  final List<Uri>? images;
}
