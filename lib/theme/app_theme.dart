import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Colors.indigo;

  static ThemeData ligthTheme = ThemeData.light().copyWith(
      //Primary Colors..
      primaryColor: Colors.indigo,
      //AppBar
      appBarTheme: const AppBarTheme(
        color: primary,
        elevation: 0,
      ),

      ///TextButtton Theme
      textButtonTheme:
          TextButtonThemeData(style: TextButton.styleFrom(primary: primary)),

      ///FloatingButtonTheme
      floatingActionButtonTheme:
          const FloatingActionButtonThemeData(backgroundColor: primary),

      // Elevation Button
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            primary: Colors.indigo, shape: const StadiumBorder(), elevation: 0),
      ),
      inputDecorationTheme: const InputDecorationTheme(
        floatingLabelStyle: TextStyle(color: primary),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: primary),
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10), topRight: Radius.circular(10)),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: primary),
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10), topRight: Radius.circular(10)),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10), topRight: Radius.circular(10)),
        ),
      ));

  static ThemeData darkTheme = ThemeData.dark().copyWith(
      //Primary Colors..
      primaryColor: Colors.indigo,
      //AppBar
      appBarTheme: const AppBarTheme(
        elevation: 0,
      ),
      scaffoldBackgroundColor: Colors.black);
}
