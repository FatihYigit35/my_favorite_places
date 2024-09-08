import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_favorite_places/screen/favorite_places_screen.dart';
import 'package:my_favorite_places/theme/dark_theme.dart';
import 'package:my_favorite_places/theme/light_theme.dart';

void main() {
  runApp(const ProviderScope(child: MainApp()));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'My Favorite Places',
        theme: lightTheme,
        darkTheme: darkTheme,
        home: const FavoritePlacesScreen(),
      );
}
