import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const seedColor = Colors.blue;

final textTheme = GoogleFonts.ubuntuCondensedTextTheme().copyWith(
  titleSmall: GoogleFonts.ubuntuCondensed(
    fontWeight: FontWeight.bold,
  ),
  titleMedium: GoogleFonts.ubuntuCondensed(
    fontWeight: FontWeight.bold,
  ),
  titleLarge: GoogleFonts.ubuntuCondensed(
    fontWeight: FontWeight.bold,
  ),
);

final lightColorScheme = ColorScheme.fromSeed(
  brightness: Brightness.light,
  seedColor: seedColor,
  surface: Colors.green[300],
);

final lightTheme = ThemeData().copyWith(
    scaffoldBackgroundColor: Colors.grey[80],
    colorScheme: lightColorScheme,
    textTheme: textTheme);
