import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppThemeController extends ChangeNotifier {
  late bool _isDark;
  late _MyThemePreferences _preferences;
  bool get isDark => _isDark;

  AppThemeController() {
    _isDark = false;
    _preferences = _MyThemePreferences();
    getPreferences();
  }

//Switching the themes
  set isDark(bool value) {
    _isDark = value;
    _preferences.setTheme(value);
    notifyListeners();
  }

  getPreferences() async {
    _isDark = await _preferences.getTheme();
    notifyListeners();
  }
}

class _MyThemePreferences {
  static const THEME_KEY = "theme_key";

  setTheme(bool value) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setBool(THEME_KEY, value);
  }

  getTheme() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.getBool(THEME_KEY) ?? false;
  }
}
