import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesUtil {
  static saveData<T>(String key, T value) async {
    WidgetsFlutterBinding.ensureInitialized();
    SharedPreferences prefs = await SharedPreferences.getInstance();

    switch (T) {
      case String:
        prefs.setString(key, value as String);
    }
  }

  static Future<T> getData<T>(String key) async {
    WidgetsFlutterBinding.ensureInitialized();
    SharedPreferences prefs = await SharedPreferences.getInstance();
    T result = '' as T;
    switch (T) {
      case String:
        if (prefs.getString(key) == null) {
          result = '' as T;
        } else {
          result = prefs.getString(key) as T;
        }

        break;
    }
    return result;
  }
}
