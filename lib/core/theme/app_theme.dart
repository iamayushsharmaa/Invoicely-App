import 'package:flutter/material.dart';

class AppTheme {
  // Private constructor
  AppTheme._();

  static final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: Colors.black,
    // Main interactive color
    scaffoldBackgroundColor: Colors.white,
    colorScheme: const ColorScheme.light(
      primary: Colors.black,
      // For elements like AppBar background, FAB
      onPrimary: Colors.white,
      // Text/icons on primary color
      secondary: Colors.grey,
      // Accent color (can be a shade of grey or black)
      onSecondary: Colors.black,
      // Text/icons on secondary color
      surface: Colors.white,
      // Background for cards, dialogs, etc.
      onSurface: Colors.black,
      // Text/icons on surface color
      background: Colors.white,
      // Overall background
      onBackground: Colors.black,
      // Text/icons on background
      error: Colors.red,
      onError: Colors.white,
      // You might want to define other colors like outline, surfaceVariant etc.
      // For a strict black and white theme, many will be black, white, or grey.
    ),
    appBarTheme: const AppBarTheme(
      color: Colors.white, // Or black, depending on preference
      iconTheme: IconThemeData(color: Colors.black),
      titleTextStyle: TextStyle(
        color: Colors.black,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    ),
    textTheme: const TextTheme(
      bodyLarge: TextStyle(color: Colors.black),
      bodyMedium: TextStyle(color: Colors.black87),
      titleLarge: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
      // Define other text styles as needed
    ),
    iconTheme: const IconThemeData(color: Colors.black),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: Colors.black,
      foregroundColor: Colors.white,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: Colors.white,
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.grey[600],
      selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
    ),
    // You can customize other widget themes here
    // e.g., buttonTheme, inputDecorationTheme, etc.
  );

  static final ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: Colors.white,
    // Main interactive color in dark mode
    scaffoldBackgroundColor: Colors.black,
    // Or a very dark grey like Color(0xFF121212)
    colorScheme: const ColorScheme.dark(
      primary: Colors.white,
      // For elements like AppBar text, FAB content
      onPrimary: Colors.black,
      // Text/icons on primary color
      secondary: Colors.grey,
      // Accent color
      onSecondary: Colors.white,
      // Text/icons on secondary color
      surface: Color(0xFF1E1E1E),
      // Dark grey for surfaces (cards, dialogs)
      onSurface: Colors.white,
      // Text/icons on surface color
      background: Colors.black,
      // Overall background
      onBackground: Colors.white,
      // Text/icons on background
      error: Colors.redAccent,
      onError: Colors.black,
      // For a strict black and white theme, many will be black, white, or grey.
    ),
    appBarTheme: const AppBarTheme(
      color: Color(0xFF1E1E1E), // Dark surface for AppBar
      iconTheme: IconThemeData(color: Colors.white),
      titleTextStyle: TextStyle(
        color: Colors.white,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    ),
    textTheme: const TextTheme(
      bodyLarge: TextStyle(color: Colors.white),
      bodyMedium: TextStyle(color: Colors.white70),
      titleLarge: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      // Define other text styles as needed
    ),
    iconTheme: const IconThemeData(color: Colors.white),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: Colors.white,
      foregroundColor: Colors.black,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: const Color(0xFF1E1E1E),
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.grey[400],
      selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
    ),
    // You can customize other widget themes here
  );
}
