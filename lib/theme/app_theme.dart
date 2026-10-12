import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Color(0xFFFF1744);
  static const Color secondary = Color(0xFFFF9100);
  static const Color background = Color(0xFF1A0A0E);
  static const Color surface = Color(0xFF291016);
  static const Color card = Color(0xFF3D1620);
  static const Color textPrimary = Colors.white;
  static const Color textSecondary = Colors.white70;

  static ThemeData get darkTheme => ThemeData(
        useMaterial3: true,
        brightness: Brightness.dark,
        scaffoldBackgroundColor: background,
        colorScheme: const ColorScheme.dark(
          primary: primary,
          secondary: secondary,
          surface: surface,
        ),
        navigationBarTheme: NavigationBarThemeData(
          backgroundColor: surface,
          indicatorColor: primary.withValues(alpha: 0.25),
          labelTextStyle: WidgetStateProperty.all(
            const TextStyle(fontSize: 12, fontWeight: FontWeight.w600, color: textSecondary),
          ),
        ),
      );
}
