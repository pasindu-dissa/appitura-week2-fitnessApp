import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static const Color primaryRed = Color(0xFF7A1515); // Approximated from design
  
  static ThemeData get darkTheme {
    return ThemeData(
      brightness: Brightness.dark,
      primaryColor: const Color(0xFF6C0B0B),
      scaffoldBackgroundColor: Colors.black,
      textTheme: GoogleFonts.alatsiTextTheme(ThemeData.dark().textTheme),
      useMaterial3: true,
    );
  }
}