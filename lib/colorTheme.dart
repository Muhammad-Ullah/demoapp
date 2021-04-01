import 'package:flutter/material.dart';

class OurTheme {
  Color ourBlue = Color(0xFF253951);
  Color lBlue = Color(0xFF3A4C62);
  Color accentBlue = Color(0xFF253A50);
  Color sBlue = Color(0xFF536575);

  ThemeData buildHere() {
    return ThemeData(
      scaffoldBackgroundColor: Colors.grey[100],
      // backgroundColor: Colors.grey[800],
      appBarTheme: AppBarTheme(color: ourBlue),
      buttonColor: accentBlue,
    );
  }
}
