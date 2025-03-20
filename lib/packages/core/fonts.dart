import 'package:flutter/material.dart';

final baseTextTheme = ThemeData.light().textTheme;

final daveTextTheme = baseTextTheme.copyWith(
  displayLarge: baseTextTheme.displayLarge?.copyWith(
    fontFamily: 'f-en',
    fontFamilyFallback: ['f-kr'],
  ),
  displayMedium: baseTextTheme.displayMedium?.copyWith(
    fontFamily: 'f-en',
    fontFamilyFallback: ['f-kr'],
  ),
  displaySmall: baseTextTheme.displaySmall?.copyWith(
    fontFamily: 'f-en',
    fontFamilyFallback: ['f-kr'],
  ),
  headlineLarge: baseTextTheme.headlineLarge?.copyWith(
    fontFamily: 'f-en',
    fontFamilyFallback: ['f-kr'],
  ),
  headlineMedium: baseTextTheme.headlineMedium?.copyWith(
    fontFamily: 'f-en',
    fontFamilyFallback: ['f-kr'],
  ),
  headlineSmall: baseTextTheme.headlineSmall?.copyWith(
    fontFamily: 'f-en',
    fontFamilyFallback: ['f-kr'],
  ),
  titleLarge: baseTextTheme.titleLarge?.copyWith(
    fontFamily: 'f-en',
    fontFamilyFallback: ['f-kr'],
  ),
  titleMedium: baseTextTheme.titleMedium?.copyWith(
    fontFamily: 'f-en',
    fontFamilyFallback: ['f-kr'],
  ),
  titleSmall: baseTextTheme.titleSmall?.copyWith(
    fontFamily: 'f-en',
    fontFamilyFallback: ['f-kr'],
  ),
  bodyLarge: baseTextTheme.bodyLarge?.copyWith(
    fontFamily: 'f-en',
    fontFamilyFallback: ['f-kr'],
  ),
  bodyMedium: baseTextTheme.bodyMedium?.copyWith(
    fontFamily: 'f-en',
    fontFamilyFallback: ['f-kr'],
  ),
  bodySmall: baseTextTheme.bodySmall?.copyWith(
    fontFamily: 'f-en',
    fontFamilyFallback: ['f-kr'],
  ),
  labelLarge: baseTextTheme.labelLarge?.copyWith(
    fontFamily: 'f-en',
    fontFamilyFallback: ['f-kr'],
  ),
  labelMedium: baseTextTheme.labelMedium?.copyWith(
    fontFamily: 'f-en',
    fontFamilyFallback: ['f-kr'],
  ),
  labelSmall: baseTextTheme.labelSmall?.copyWith(
    fontFamily: 'f-en',
    fontFamilyFallback: ['f-kr'],
  ),
);
