import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData myLightTheme() {
  return ThemeData(
    brightness: Brightness.light,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.white,
      foregroundColor: Colors.black,
    ),
    cardTheme: CardTheme(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
    ),
    useMaterial3: true,
    textTheme: GoogleFonts.rubikTextTheme(),
  );
}

ThemeData myDarkTheme() {
  return ThemeData(
    brightness: Brightness.dark,
    cardTheme: CardTheme(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
    ),
    useMaterial3: true,
    textTheme: GoogleFonts.rubikTextTheme().copyWith(
      bodyText2: GoogleFonts.rubik(color: Colors.white),
      headline6: GoogleFonts.rubik(color: Colors.white),
    ),
    listTileTheme: const ListTileThemeData(
      textColor: Colors.white,
    ),
  );
}
