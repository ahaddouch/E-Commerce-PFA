
import 'package:flutter/material.dart';
import 'package:ecommrce_pfa/constants/theme.dart';

ThemeData darkThemeData = ThemeData(
  scaffoldBackgroundColor: Colors.grey[900],
  primaryColor: Colors.green,
  outlinedButtonTheme: OutlinedButtonThemeData(
    style: ButtonStyle(
      side: MaterialStateProperty.all(const BorderSide(color: Colors.green, width: 1.7)),
    ),
  ),
  inputDecorationTheme: InputDecorationTheme(
    border: outlineInputBorder,
    errorBorder: outlineInputBorder,
    enabledBorder: outlineInputBorder,
    prefixIconColor: Colors.grey,
    suffixIconColor: Colors.grey,
    focusedBorder: outlineInputBorder,
    disabledBorder: outlineInputBorder,
    iconColor: Colors.white,
    labelStyle: TextStyle(color: Colors.white),
   // IconButtonTheme: IconThemeData(color: Colors.white),
    hintStyle: TextStyle(color: Colors.white),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      primary: Colors.green,
      textStyle: const TextStyle(
        fontSize: 18.0,
      ),
      onPrimary: Colors.white,
      onSurface: Colors.grey,
    ),
  ),
  primarySwatch: MaterialColor(
    Colors.green.value,
    <int, Color>{
      50: Colors.green[50]!,
      100: Colors.green[100]!,
      200: Colors.green[200]!,
      300: Colors.green[300]!,
      400: Colors.green[400]!,
      500: Colors.green[500]!,
      600: Colors.green[600]!,
      700: Colors.green[700]!,
      800: Colors.green[800]!,
      900: Colors.green[900]!,
    },
  ),
  canvasColor: Colors.green,
  textTheme:  TextTheme(
    headline1: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
    bodyText1: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
    bodyText2: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.normal,
      color: Colors.white,
    ),
    headline4: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
    headline5: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.normal,
      color: Colors.white,
    ),
    headline6: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.normal,
      color: Colors.white,
    ),
    subtitle1: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.normal,
      color: Colors.white,
    ),
    subtitle2: TextStyle(
      fontSize: 10,
      fontWeight: FontWeight.normal,
      color: Colors.white,
    ),
    button: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
    caption: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.normal,
      color: Colors.white,
    ),
    overline: TextStyle(
      fontSize: 10,
      fontWeight: FontWeight.normal,
      color: Colors.white,
    ),

  ),

  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.black,
    elevation: 0.0,
    toolbarTextStyle: TextStyle(
      color: Colors.white,
    ),
    iconTheme: IconThemeData(
      color: Colors.white,
    ),
  ),
);


OutlineInputBorder outlineInputBorder = const OutlineInputBorder(
  borderSide: BorderSide(
    color: Colors.grey,
  ),
);