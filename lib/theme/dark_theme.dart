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
  textTheme: textTheme.copyWith(
    titleSmall: textTheme.titleSmall!.copyWith(color: Colors.white),
    titleMedium: textTheme.titleMedium!.copyWith(color: Colors.white),
    titleLarge: textTheme.titleLarge!.copyWith(color: Colors.white),
    bodyLarge: textTheme.bodyLarge!.copyWith(color: Colors.white),
    bodyMedium: textTheme.bodyMedium!.copyWith(color: Colors.white),
    bodySmall: textTheme.bodySmall!.copyWith(color: Colors.white),
    labelSmall: textTheme.labelSmall!.copyWith(color: Colors.white),
    labelLarge: textTheme.labelLarge!.copyWith(color: Colors.white),
    labelMedium: textTheme.labelMedium!.copyWith(color: Colors.white),
    displayLarge: textTheme.displayLarge!.copyWith(color: Colors.white),
    displayMedium: textTheme.displayMedium!.copyWith(color: Colors.white),
    displaySmall: textTheme.displaySmall!.copyWith(color: Colors.white),
    headlineLarge: textTheme.headlineLarge!.copyWith(color: Colors.white),
    headlineMedium: textTheme.headlineMedium!.copyWith(color: Colors.white),
    headlineSmall: textTheme.headlineSmall!.copyWith(color: Colors.white),
  ),
);
