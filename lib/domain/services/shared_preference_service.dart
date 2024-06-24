import 'dart:ui';

import 'package:shared_preferences/shared_preferences.dart';

class _SharedPreferenceServiceKey {
  static const theme = 'THEME';
  static const language = 'LANGUAGE';
}

class SharedPreferenceService {
  //Theme

  static Future<bool> getTheme() async {
    final pref = await SharedPreferences.getInstance();
    final isDark = pref.getBool(_SharedPreferenceServiceKey.theme);
    return isDark ?? false;
  }

  static Future<void> setTheme(bool isDark) async {
    final pref = await SharedPreferences.getInstance();
    await pref.setBool(_SharedPreferenceServiceKey.theme, isDark);
  }

  static Future<void> removeTheme(bool isDark) async {
    final pref = await SharedPreferences.getInstance();
    await pref.remove(_SharedPreferenceServiceKey.theme);
  }

  //Language

  static Future<Locale> getLanguage() async {
    final pref = await SharedPreferences.getInstance();
    final local = pref.getString(_SharedPreferenceServiceKey.language);
    return Locale(local ?? 'en');
  }

  static Future<void> setLanguage(String languageCode) async {
    final pref = await SharedPreferences.getInstance();
    await pref.setString(_SharedPreferenceServiceKey.language, languageCode);
  }

  static Future<void> removeLanguage(bool isDark) async {
    final pref = await SharedPreferences.getInstance();
    await pref.remove(_SharedPreferenceServiceKey.language);
  }
}
