import 'package:flutter/material.dart';

ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  visualDensity: VisualDensity.comfortable,
  appBarTheme: const AppBarTheme(
    foregroundColor: Colors.white70,
    backgroundColor: Colors.black,
  ),
  bottomAppBarColor: Colors.black,
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.resolveWith<Color?>(
          (Set<MaterialState> states) {
        return Colors.black;
      }),
    ),
  ),
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    foregroundColor: Colors.black,
    backgroundColor: Colors.tealAccent,
  ),
  // textTheme: const TextTheme(
  //   headline1: TextStyle(
  //     color: Colors.white,
  //   ),
  //   headline2: TextStyle(
  //     color: Colors.white,
  //   ),
  //   headline3: TextStyle(
  //     color: Colors.white,
  //   ),
  //   headline4: TextStyle(
  //     color: Colors.white,
  //   ),
  // ),
);
ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  visualDensity: VisualDensity.comfortable,
  appBarTheme: const AppBarTheme(
    foregroundColor: Colors.black,
    backgroundColor: Colors.white,
  ),
  bottomAppBarColor: Colors.white,
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.resolveWith<Color?>(
          (Set<MaterialState> states) {
        return Colors.grey;
      }),
    ),
  ),
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    foregroundColor: Colors.white,
    backgroundColor: Colors.black,
  ),
  // textTheme: const TextTheme(
  //   headline1: TextStyle(
  //     color: Colors.white,
  //   ),
  //   headline2: TextStyle(
  //     color: Colors.white,
  //   ),
  //   headline3: TextStyle(
  //     color: Colors.white,
  //   ),
  //   headline4: TextStyle(
  //     color: Colors.white,
  //   ),
  // ),
);
