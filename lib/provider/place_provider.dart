import 'dart:io';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_favorite_places/model/place_location.dart';
import 'package:path_provider/path_provider.dart' as syspaths;
import 'package:path/path.dart' as path;
import 'package:sqflite/sqflite.dart' as sql;
import 'package:sqflite/sqlite_api.dart';

import '../model/place.dart';

Future<Database> _getDatabase() async {
  final dbPath = await sql.getDatabasesPath();
  final db = await sql.openDatabase(
    path.join(dbPath, 'places.db'),
    onCreate: (db, version) {
      return db.execute(
          'CREATE TABLE favorite_places(id TEXT PRIMARY KEY, title TEXT, description TEXT, image TEXT, lat REAL, lng REAL, address TEXT)');
    },
    version: 1,
  );

  return db;
}

class PlaceNotifier extends StateNotifier<List<Place>> {
  PlaceNotifier() : super(const []);

  Future<void> loadPlaces() async {
    final db = await _getDatabase();
    final data = await db.query('favorite_places');

    final places = data
        .map(
          (e) => Place(
            id: e['id'] as String,
            title: e['title'] as String,
            description: e['description'] as String,
            image: File(e['image'] as String),
            location: PlaceLocation(
              latitude: e['lat'] as double,
              longitude: e['lng'] as double,
              address: e['address'] as String,
            ),
          ),
        )
        .toList();

    state = places;
  }

  void addPlace(Place place) async {
    final appDir = await syspaths.getApplicationDocumentsDirectory();

    if (place.image == null) {
      return;
    }

    final image = place.image!;

    final fileName = path.basename(image.path);

    final coppiedImage = await image.copy('${appDir.path}/$fileName');

    place.image = coppiedImage;

    final db = await _getDatabase();

    db.insert('favorite_places', place.toMap());

    state = [place, ...state];
  }

  List<Place> getPlaces() {
    return state;
  }
}

final placeProvider = StateNotifierProvider<PlaceNotifier, List<Place>>(
  (ref) => PlaceNotifier(),
);
