import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../provider/place_provider.dart';
import '../widget/place_list_item.dart';
import './new_place_screen.dart';

class FavoritePlacesScreen extends ConsumerWidget {
  const FavoritePlacesScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final places = ref.watch(placeProvider);

    Widget content = const Center(
      child: Text(
        'No place added yet',
        style: TextStyle(
          fontSize: 20,
        ),
      ),
    );

    if (places.isNotEmpty) {
      content = ListView.builder(
        itemCount: places.length,
        itemBuilder: (context, index) {
          return PlaceListItem(
            place: places[index],
          );
        },
      );
    }

    return Scaffold(
        appBar: AppBar(
          title: const Text('Your Places'),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const NewPlaceScreen(),
                ));
              },
              icon: const Icon(Icons.add),
            ),
          ],
        ),
        body: content);
  }
}
