import 'package:flutter/material.dart';
import 'constants.dart';

final ThemeData appTheme = ThemeData(
  primaryColor: kpurpleColor,
  accentColor: klightPinkColor1,
  visualDensity: VisualDensity.adaptivePlatformDensity,
  fontFamily: 'Raleway',
  textTheme: const TextTheme(
          headline1: TextStyle(
              fontSize: 39,
              fontWeight: FontWeight.w700,
              height: 1.1,
              letterSpacing: -1.5),
          headline2: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 24,
              height: 1.3,
              letterSpacing: -0.5),
          headline3:
              TextStyle(fontWeight: FontWeight.w500, fontSize: 21, height: 3.1),
          bodyText1: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 19,
              height: 1.5,
              color: kpurpleColor),
          caption: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 15,
              height: 1.3,
              letterSpacing: 0.4),
          button: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 17,
            height: 1.1,
            letterSpacing: 1.25,
          ),
          headline6: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 67,
              height: 1.75,
              letterSpacing: -1.5),
          subtitle1: TextStyle(color: Colors.white))
      .apply(
    bodyColor: Colors.white,
    displayColor: Colors.white,
  ),
  iconTheme: const IconThemeData(
    size: 32,
  ),
  textSelectionTheme: const TextSelectionThemeData(cursorColor: klightPinkColor1),
  inputDecorationTheme: const InputDecorationTheme(
    labelStyle: TextStyle(color: klightPinkColor1),
    enabledBorder: UnderlineInputBorder(
      borderSide: BorderSide(color: klightPinkColor1, width: 0.0),
    ),
    focusedBorder: UnderlineInputBorder(
      borderSide: BorderSide(color: klightPinkColor1, width: 0.0),
    ),
  ),
  floatingActionButtonTheme: const FloatingActionButtonThemeData(backgroundColor: kpurpleColor, foregroundColor: klightPinkColor2,elevation: 20),
);
