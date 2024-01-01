import 'package:flutter/material.dart';
import 'package:movie_time/core/constants/custom_colors.dart';

final lightTheme = ThemeData(
  fontFamily: "Montserrat",
  scaffoldBackgroundColor: CustomColors.color242A32,
  primaryColor: CustomColors.color0296E5,
  unselectedWidgetColor: CustomColors.color67686D,
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    backgroundColor: CustomColors.color242A32,
    foregroundColor: Colors.white,
    elevation: 10,
  ),
  iconTheme: const IconThemeData(
    color: Colors.white,
  ),
  appBarTheme: const AppBarTheme(
    backgroundColor: CustomColors.color242A32,
    elevation: 12,
    iconTheme: IconThemeData(
      color: CustomColors.colorEEEEEE,
      size: 20,
    ),
    titleTextStyle: TextStyle(
      color: CustomColors.colorEEEEEE,
      fontSize: 18,
      fontWeight: FontWeight.w500,
      fontFamily: 'Montserrat',
    ),
  ),
  colorScheme: const ColorScheme.light(
    primary: CustomColors.color0296E5,
    secondary: CustomColors.color242A32,
    onPrimary: CustomColors.colorEEEEEE,
    onSecondary: CustomColors.color67686D,
    background: CustomColors.color242A32,
    onBackground: CustomColors.colorEEEEEE,
  ),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    backgroundColor: CustomColors.color242A32,
    elevation: 12,
    type: BottomNavigationBarType.fixed,
    unselectedIconTheme: IconThemeData(size: 20),
    selectedIconTheme: IconThemeData(size: 24),
    selectedItemColor: CustomColors.color0296E5,
    unselectedItemColor: CustomColors.color67686D,
    selectedLabelStyle: TextStyle(
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w500,
      fontSize: 13,
    ),
    unselectedLabelStyle: TextStyle(
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w500,
      fontSize: 12,
    ),
  ),
);
