import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_favorite_places/provider/place_provider.dart';
import 'package:my_favorite_places/screen/new_place_screen.dart';
import 'package:my_favorite_places/widget/place_list_item.dart';

class FavoritePlacesScreen extends ConsumerStatefulWidget {
  const FavoritePlacesScreen({super.key});

  @override
  ConsumerState<FavoritePlacesScreen> createState() =>
      _FavoritePlacesScreenState();
}

class _FavoritePlacesScreenState extends ConsumerState<FavoritePlacesScreen> {
  @override
  Widget build(BuildContext context) {
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
          return PlaceListItem(places[index].title ?? 'No title entered');
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
