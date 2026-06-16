import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static const Color primaryRed = Color(0xFF6C0B0B);
  
  static ThemeData get darkTheme {
    return ThemeData(
      brightness: Brightness.dark,
      primaryColor: primaryRed,
      scaffoldBackgroundColor: Colors.black,
      textTheme: GoogleFonts.alatsiTextTheme(ThemeData.dark().textTheme),
      useMaterial3: true,
    );
  }
}