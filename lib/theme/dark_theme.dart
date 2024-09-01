import 'package:flutter/material.dart';

import '../theme/light_theme.dart';

const darkThemeTextColor = Colors.white;

final darkColorScheme = ColorScheme.fromSeed(
  brightness: Brightness.dark,
  seedColor: seedColor,
  surface: Colors.green[800],
);

final darkTheme = ThemeData().copyWith(
  scaffoldBackgroundColor: Colors.grey[800],
  colorScheme: darkColorScheme,
  textTheme: textTheme.copyWith(
    titleSmall: textTheme.titleSmall!.copyWith(
      color: darkThemeTextColor,
    ),
    titleMedium: textTheme.titleMedium!.copyWith(
      color: darkThemeTextColor,
    ),
    titleLarge: textTheme.titleLarge!.copyWith(
      color: darkThemeTextColor,
    ),
    bodyLarge: textTheme.bodyLarge!.copyWith(
      color: darkThemeTextColor,
    ),
    bodyMedium: textTheme.bodyMedium!.copyWith(
      color: darkThemeTextColor,
    ),
    bodySmall: textTheme.bodySmall!.copyWith(
      color: darkThemeTextColor,
    ),
    labelSmall: textTheme.labelSmall!.copyWith(
      color: darkThemeTextColor,
    ),
    labelLarge: textTheme.labelLarge!.copyWith(
      color: darkThemeTextColor,
    ),
    labelMedium: textTheme.labelMedium!.copyWith(
      color: darkThemeTextColor,
    ),
    displayLarge: textTheme.displayLarge!.copyWith(
      color: darkThemeTextColor,
    ),
    displayMedium: textTheme.displayMedium!.copyWith(
      color: darkThemeTextColor,
    ),
    displaySmall: textTheme.displaySmall!.copyWith(
      color: darkThemeTextColor,
    ),
    headlineLarge: textTheme.headlineLarge!.copyWith(
      color: darkThemeTextColor,
    ),
    headlineMedium: textTheme.headlineMedium!.copyWith(
      color: darkThemeTextColor,
    ),
    headlineSmall: textTheme.headlineSmall!.copyWith(
      color: darkThemeTextColor,
    ),
  ),
);
