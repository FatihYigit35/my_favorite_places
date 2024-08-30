class PlaceItem {
  const PlaceItem({
    this.name,
    this.description,
    this.location,
    this.images,
  });

  final String? name;
  final String? description;
  final String? location;
  final List<Uri>? images;
}
