import 'package:flutter/material.dart';

class AppTheme {
  static const Color seedColor = Colors.red;

  static final ThemeData lightTheme = ThemeData(
    colorScheme: ColorScheme.fromSeed(
      seedColor: seedColor,
      brightness: Brightness.light,
    ),
    useMaterial3: true,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
      foregroundColor: Colors.black,
    ),
    scaffoldBackgroundColor: Colors.white,
    textTheme: const TextTheme(bodyMedium: TextStyle(fontSize: 16)),
  );

  static final ThemeData darkTheme = ThemeData(
    colorScheme: ColorScheme.fromSeed(
      seedColor: seedColor,
      brightness: Brightness.dark,
    ),
    useMaterial3: true,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
      foregroundColor: Colors.white,
    ),
    scaffoldBackgroundColor: Colors.black,
    textTheme: const TextTheme(bodyMedium: TextStyle(fontSize: 16)),
  );
}
