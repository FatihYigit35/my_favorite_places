import 'package:flutter/material.dart';
import 'package:my_favorite_places/theme/light_theme.dart';

final darkColorScheme = ColorScheme.fromSeed(
  brightness: Brightness.dark,
  seedColor: seedColor,
  surface: Colors.green[800],
);

final darkTheme = ThemeData().copyWith(
    scaffoldBackgroundColor: Colors.grey[800],
    colorScheme: darkColorScheme,
    textTheme: textTheme);
