import 'package:flutter/material.dart';
import 'package:iagapp/sharedPreferences.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeMode themeMode = ThemeMode.system;
  late SharedPreferences prefs;

  void setThemeMode(ThemeMode theme) {
    themeMode = theme;
  }

  bool get isSystemTheme {
    if (themeMode == ThemeMode.system) {
      return true;
    } else {
      return false;
    }
  }

  bool get isDarkTheme {
    if (themeMode == ThemeMode.dark) {
      return true;
    } else {
      return false;
    }
  }

  void toggleSystemTheme(bool isOn) {
    if (isOn) {
      themeMode = ThemeMode.system;
      SharedPreferencesUtil.saveData('themeMode', 'ThemeMode.system');
    } else {
      themeMode = ThemeMode.light;
      SharedPreferencesUtil.saveData('themeMode', 'ThemeMode.light');
    }
    notifyListeners();
  }

  void toggleDarkTheme(bool isOn) {
    if (isOn) {
      themeMode = ThemeMode.dark;
      SharedPreferencesUtil.saveData('themeMode', 'ThemeMode.dark');
    } else {
      themeMode = ThemeMode.light;
      SharedPreferencesUtil.saveData('themeMode', 'ThemeMode.light');
    }
    notifyListeners();
  }

  ThemeMode getThemeModeFromString(String str) {
    if (str == 'ThemeMode.system') {
      return ThemeMode.system;
    } else if (str == 'ThemeMode.light') {
      return ThemeMode.light;
    } else if (str == 'ThemeMode.dark') {
      return ThemeMode.dark;
    } else {
      return ThemeMode.system;
    }
  }
}
