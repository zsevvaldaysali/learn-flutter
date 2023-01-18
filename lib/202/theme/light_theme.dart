import 'package:flutter/material.dart';

class LightTheme {
  final _lightColor = _LightColor();
  late ThemeData theme;

  LightTheme() {
    theme = ThemeData(
        appBarTheme: const AppBarTheme(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.vertical(bottom: Radius.elliptical(40, 100))),
            backgroundColor: Color(0xffe65482)),
        buttonTheme: ButtonThemeData(
            colorScheme: ColorScheme.light(
          //onPrimary: _lightColor._carmoisine,
          onPrimary: _lightColor.iceClimber,
        )),
        checkboxTheme: CheckboxThemeData(
          fillColor: MaterialStateProperty.all(_lightColor._textColor),
        ),
        scaffoldBackgroundColor: Colors.white.withOpacity(0.7),
        floatingActionButtonTheme: const FloatingActionButtonThemeData(backgroundColor: Color(0xfdde215c)),
        textTheme:
            ThemeData.light().textTheme.copyWith(subtitle1: TextStyle(fontSize: 20, color: _lightColor.carmoisine)),
        colorScheme: const ColorScheme.light());
  }
}

class _LightColor {
  final Color _textColor = const Color.fromARGB(255, 106, 227, 54);
  final Color carmoisine = const Color.fromARGB(255, 181, 33, 70);
  final Color iceClimber = const Color.fromARGB(255, 27, 222, 200);
}
