import 'package:flutter/material.dart';
import 'color_scheme.dart';
import 'text_theme.dart';
import 'package:flutter/services.dart';

/// The light theme configuration for the application.
///
/// This [ThemeData] defines the visual appearance of the application in light mode.
ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  useMaterial3: true,
  colorScheme: lightColorScheme,
  scaffoldBackgroundColor: lightColorScheme.background,
  highlightColor: lightColorScheme.outline,
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: lightColorScheme.primary,
      foregroundColor: lightColorScheme.onPrimary,
      textStyle: textTheme.labelSmall,
      //padding:ResponsiveUtils.getPadding(left: 30, right: 30, top: 8, bottom: 8)
    ),
  ),
  filledButtonTheme: FilledButtonThemeData(
    style: FilledButton.styleFrom(
      backgroundColor: lightColorScheme.primary,
      foregroundColor: lightColorScheme.onPrimary,
      textStyle: textTheme.labelMedium,
      padding: const EdgeInsets.only(left: 30, right: 30, top: 8, bottom: 8),
    ),
  ),
  outlinedButtonTheme: OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
        backgroundColor: lightColorScheme.onPrimary,
        foregroundColor: lightColorScheme.primary,
        side: BorderSide(color: lightColorScheme.onPrimaryContainer),
        textStyle: textTheme.labelMedium,
        shape: const ContinuousRectangleBorder(side: BorderSide(width: 10)),
        padding: const EdgeInsets.fromLTRB(32.0, 8.0, 32.0, 8.0)),
  ),
  textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(textStyle: textTheme.labelMedium)),
  inputDecorationTheme: InputDecorationTheme(
    labelStyle: textTheme.labelMedium,
    suffixIconColor: lightColorScheme.primary,
    contentPadding:
        const EdgeInsets.only(left: 20, right: 20, top: 15, bottom: 15),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(30.0),
      borderSide: BorderSide(color: lightColorScheme.secondaryContainer),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10.0),
      borderSide:
          BorderSide(style: BorderStyle.solid, color: lightColorScheme.primary),
    ),
  ),
  appBarTheme: const AppBarTheme(
    systemOverlayStyle: SystemUiOverlayStyle(
      //statusBarColor: Colors.green,
      statusBarIconBrightness: Brightness.dark,
      statusBarBrightness: Brightness.light,
    ),
    toolbarHeight: 80,
  ),
  textTheme: textTheme,
);

/// The dark theme configuration for the application.
///
/// This [ThemeData] defines the visual appearance of the application in dark mode.
ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  useMaterial3: true,
  colorScheme: darkColorScheme,
  scaffoldBackgroundColor: darkColorScheme.background,
  highlightColor: darkColorScheme.outline,
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
        backgroundColor: darkColorScheme.primary,
        foregroundColor: darkColorScheme.onPrimary,
        textStyle: textTheme.labelMedium,
        padding: const EdgeInsets.only(left: 20, right: 20, top: 8, bottom: 8)),
  ),
  filledButtonTheme: FilledButtonThemeData(
    style: FilledButton.styleFrom(
      backgroundColor: darkColorScheme.primary,
      foregroundColor: darkColorScheme.onPrimary,
      textStyle: textTheme.labelSmall,
      padding: const EdgeInsets.only(left: 30, right: 30, top: 8, bottom: 8),
    ),
  ),
  textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(textStyle: textTheme.bodySmall)),
  outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
    backgroundColor: darkColorScheme.onPrimary,
    foregroundColor: darkColorScheme.primary,
    side: BorderSide(color: darkColorScheme.primary),
    textStyle: textTheme.labelMedium,
    shape: const ContinuousRectangleBorder(side: BorderSide(width: 10)),
    padding: const EdgeInsets.only(left: 8, right: 8, top: 8, bottom: 8),
  )),
  inputDecorationTheme: InputDecorationTheme(
    labelStyle: textTheme.bodyMedium,
    hintStyle: textTheme.bodyMedium,
    helperStyle: textTheme.bodyMedium,
    suffixIconColor: darkColorScheme.primary,
    contentPadding:
        const EdgeInsets.only(left: 20, right: 20, top: 15, bottom: 15),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(30.0),
      borderSide: BorderSide(color: darkColorScheme.secondaryContainer),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10.0),
      borderSide:
          BorderSide(style: BorderStyle.solid, color: darkColorScheme.primary),
    ),
  ),
  appBarTheme: const AppBarTheme(
    systemOverlayStyle: SystemUiOverlayStyle(
      //statusBarColor: Colors.green,
      statusBarIconBrightness: Brightness.light,
      statusBarBrightness: Brightness.dark,
    ),
  ),
  textTheme: textTheme,
);
