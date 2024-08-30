import 'package:flutter/material.dart';

class PlaceListItem extends StatelessWidget {
  const PlaceListItem(this.title, {super.key});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        title,
        style: const TextStyle(fontSize: 20),
      ),
    );
  }
}
