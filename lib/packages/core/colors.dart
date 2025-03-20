import 'package:boardshare/packages/core/fonts.dart';
import 'package:flutter/material.dart';

// Themes
final kThemeBright = ThemeData(
  useMaterial3: true,
  brightness: Brightness.light,
  textTheme: daveTextTheme,
  colorScheme: ColorScheme.fromSeed(
    seedColor: Color(0xFF1D1137),
    brightness: Brightness.light,
  ),
  scaffoldBackgroundColor: Colors.white,
  appBarTheme: AppBarTheme(
    backgroundColor: Color(0xFF1D1137),
    // backgroundColor: Colors.white,
    foregroundColor: Colors.white,
    surfaceTintColor: Colors.transparent,
    // elevation: 0,
    // shadowColor: Colors.transparent,
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: Color(0xFF1D1137),
      foregroundColor: Colors.white,
    ),
  ),
  floatingActionButtonTheme: FloatingActionButtonThemeData(
    backgroundColor: Color(0xFF1D1137),
    foregroundColor: Colors.white, // 아이콘 색상
  ),
);

final kThemeDark = ThemeData(
  useMaterial3: true,
  brightness: Brightness.dark,
  textTheme: daveTextTheme,
  colorScheme: ColorScheme.fromSeed(
    seedColor: Color(0xFF2A0636),
    brightness: Brightness.dark,
  ),
  scaffoldBackgroundColor: Color(0xFF121212),
  appBarTheme: AppBarTheme(
    backgroundColor: Color(0xFF1A1A1A),
    foregroundColor: Colors.white,
    surfaceTintColor: Colors.transparent,
    elevation: 0,
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: Color(0xFF1A1A1A),
      foregroundColor: Colors.white,
    ),
  ),
);

// BorderColor
final kBColor = Color(0xFFDBDFE1);

// background colors
final kBgColor = Color(0xFFE8EAED);
