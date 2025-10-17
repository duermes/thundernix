import 'package:flutter/material.dart';
import 'tokens.dart';

ThemeData buildLightTheme() {
  final base = ThemeData.light(useMaterial3: true);
  return base.copyWith(
    scaffoldBackgroundColor: AppTokens.bg,
    primaryColor: AppTokens.blackDeep,
    colorScheme: ColorScheme.fromSeed(
      seedColor: AppTokens.blackDeep,
      brightness: Brightness.light,
      primary: AppTokens.blackDeep,
      onPrimary: Colors.white,
      surface: AppTokens.surface,
      onSurface: AppTokens.textPrimary,
      secondary: AppTokens.btnDark50,
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: AppTokens.blackDeep,
      foregroundColor: Colors.white,
      elevation: 0,
      centerTitle: true,
    ),
    textTheme: base.textTheme.apply(
      bodyColor: AppTokens.textPrimary,
      displayColor: AppTokens.textPrimary,
    ),
    checkboxTheme: CheckboxThemeData(
      side: const BorderSide(color: AppTokens.blackDeep, width: 1.5),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      materialTapTargetSize: MaterialTapTargetSize.padded,
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: AppTokens.surface,
      contentPadding: const EdgeInsets.symmetric(horizontal: AppTokens.s16, vertical: 14),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppTokens.r12),
        borderSide: const BorderSide(color: AppTokens.border),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppTokens.r12),
        borderSide: const BorderSide(color: AppTokens.border),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppTokens.r12),
        borderSide: const BorderSide(color: AppTokens.blackDeep, width: 1.5),
      ),
      labelStyle: const TextStyle(color: AppTokens.textSecondary),
    ),
    cardTheme: CardThemeData(
      color: AppTokens.surface,
      elevation: 0,
      margin: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppTokens.r12),
        side: const BorderSide(color: AppTokens.border),
      ),
    ),
    dividerTheme: const DividerThemeData(color: AppTokens.border, thickness: 1),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: AppTokens.blackDeep,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white70,
    ),
    // Remove shadows from all buttons app-wide
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        elevation: const WidgetStatePropertyAll(0),
        shadowColor: const WidgetStatePropertyAll(Colors.transparent),
        surfaceTintColor: const WidgetStatePropertyAll(Colors.transparent),
      ),
    ),
    filledButtonTheme: FilledButtonThemeData(
      style: ButtonStyle(
        elevation: const WidgetStatePropertyAll(0),
        shadowColor: const WidgetStatePropertyAll(Colors.transparent),
        surfaceTintColor: const WidgetStatePropertyAll(Colors.transparent),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: ButtonStyle(
        shadowColor: const WidgetStatePropertyAll(Colors.transparent),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        shadowColor: const WidgetStatePropertyAll(Colors.transparent),
      ),
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      elevation: 0,
      focusElevation: 0,
      hoverElevation: 0,
      highlightElevation: 0,
      disabledElevation: 0,
    ),
  );
}
