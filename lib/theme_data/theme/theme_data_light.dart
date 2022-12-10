import 'package:features/theme_data/colors/colors_light.dart';
import 'package:flutter/material.dart';

ThemeData getThemeDataLight () => ThemeData(
  primaryColor: ColorsLight.primaryColor,
  appBarTheme: const AppBarTheme(
    elevation: 30.0,
    shadowColor: Colors.green,
    color: ColorsLight.appBarColor,
  ),
  textButtonTheme: TextButtonThemeData(
    style: ButtonStyle(
      foregroundColor: MaterialStateProperty.all(
        ColorsLight.textButtonColor,
      ),
    ),
  ),
  floatingActionButtonTheme: FloatingActionButtonThemeData(
    backgroundColor: ColorsLight.floatingActionButtonColor,
  ),
  switchTheme: SwitchThemeData(
    trackColor: MaterialStateProperty.all(ColorsLight.switchTrackColor, ),
    thumbColor: MaterialStateProperty.all(ColorsLight.switchthumbColor, ),
  ),
  textTheme: getTextTheme(),
  iconTheme: IconThemeData(
    size: 90.0,
    color: ColorsLight.iconColor,


  ),

);



TextTheme getTextTheme() => TextTheme(
  displayLarge: TextStyle(
    fontSize: 90.0,
    color: Colors.grey,
  ),
);