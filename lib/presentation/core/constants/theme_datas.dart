import 'package:flutter/material.dart';
import 'package:shopping_app/presentation/core/constants/theme_colors.dart';

// ignore: avoid_classes_with_only_static_members
class ThemeDatas {
  static ThemeData lightThemeData = ThemeData(
    appBarTheme: const AppBarTheme(
      color: Colors.white,
    ),
    primaryColor: Color(0xff191B24),
    backgroundColor: Colors.white,
    accentColor: Colors.green,
    canvasColor: Colors.black,
    brightness: Brightness.dark,
    scaffoldBackgroundColor: ThemeColors.scaffoldBackgroundColor,
    iconTheme: const IconThemeData(color: Colors.grey),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Colors.green)),
    ),
    buttonTheme: const ButtonThemeData(
      buttonColor: Colors.green,
    ),
  );
}
