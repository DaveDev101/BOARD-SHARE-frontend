import 'package:flutter/material.dart';

final baseTextTheme = ThemeData.light().textTheme;

final daveTextTheme = baseTextTheme.copyWith(
  displayLarge: baseTextTheme.displayLarge?.copyWith(
    fontFamily: 'f-en',
    fontFamilyFallback: ['f-krn'],
  ),
  displayMedium: baseTextTheme.displayMedium?.copyWith(
    fontFamily: 'f-en',
    fontFamilyFallback: ['f-krn'],
  ),
  displaySmall: baseTextTheme.displaySmall?.copyWith(
    fontFamily: 'f-en',
    fontFamilyFallback: ['f-krn'],
  ),
  headlineLarge: baseTextTheme.headlineLarge?.copyWith(
    fontFamily: 'f-en',
    fontFamilyFallback: ['f-krn'],
  ),
  headlineMedium: baseTextTheme.headlineMedium?.copyWith(
    fontFamily: 'f-en',
    fontFamilyFallback: ['f-krn'],
  ),
  headlineSmall: baseTextTheme.headlineSmall?.copyWith(
    fontFamily: 'f-en',
    fontFamilyFallback: ['f-krn'],
  ),
  titleLarge: baseTextTheme.titleLarge?.copyWith(
    fontFamily: 'f-en',
    fontFamilyFallback: ['f-krn'],
  ),
  titleMedium: baseTextTheme.titleMedium?.copyWith(
    fontFamily: 'f-en',
    fontFamilyFallback: ['f-krn'],
  ),
  titleSmall: baseTextTheme.titleSmall?.copyWith(
    fontFamily: 'f-en',
    fontFamilyFallback: ['f-krn'],
  ),
  bodyLarge: baseTextTheme.bodyLarge?.copyWith(
    fontFamily: 'f-en',
    fontFamilyFallback: ['f-krn'],
  ),
  bodyMedium: baseTextTheme.bodyMedium?.copyWith(
    fontFamily: 'f-en',
    fontFamilyFallback: ['f-krn'],
  ),
  bodySmall: baseTextTheme.bodySmall?.copyWith(
    fontFamily: 'f-en',
    fontFamilyFallback: ['f-krn'],
  ),
  labelLarge: baseTextTheme.labelLarge?.copyWith(
    fontFamily: 'f-en',
    fontFamilyFallback: ['f-krn'],
  ),
  labelMedium: baseTextTheme.labelMedium?.copyWith(
    fontFamily: 'f-en',
    fontFamilyFallback: ['f-krn'],
  ),
  labelSmall: baseTextTheme.labelSmall?.copyWith(
    fontFamily: 'f-en',
    fontFamilyFallback: ['f-krn'],
  ),
);
