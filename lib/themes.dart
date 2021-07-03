import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
        fontFamily: GoogleFonts.montserrat().fontFamily,
        canvasColor: creamColor,
        primarySwatch: Colors.pink,
        bottomAppBarColor: Colors.transparent,
      );

  static ThemeData darkTheme(BuildContext context) => ThemeData(
        fontFamily: GoogleFonts.montserrat().fontFamily,
        primaryColor: Colors.pink,
        canvasColor: canvasColor,
        brightness: Brightness.dark,
        bottomAppBarColor: Colors.transparent,
      );
}

// Colors
const Color canvasColor = Colors.black;
const Color creamColor = Color(0xfff5f5f5);
