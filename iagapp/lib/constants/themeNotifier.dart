import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeMode themeMode = ThemeMode.system;

  bool get isSystemTheme => themeMode == ThemeMode.system;
  bool get isDarkTheme => themeMode == ThemeMode.dark;

  void toggleSystemTheme(bool isOn) {
    themeMode = isOn ? ThemeMode.system : ThemeMode.light;
    notifyListeners();
  }

  void toggleDarkTheme(bool isOn) {
    themeMode = isOn ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
  }
}
