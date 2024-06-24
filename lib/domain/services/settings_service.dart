import 'package:flutter/cupertino.dart';
import 'package:git_test/data/models/language.dart';
import 'package:git_test/domain/l10n/l10n.dart';
import 'package:git_test/domain/services/shared_preference_service.dart';

class SettingsService extends ChangeNotifier {
  bool _isDark = false;
  Language _language = L10n.languages.first;

  SettingsService() {
    _setThemeFromCash();
    _setLocaleFromCash();
  }

  void _setThemeFromCash() async {
    _isDark = await SharedPreferenceService.getTheme();
    notifyListeners();
  }

  void _setLocaleFromCash() async {
    final locale = await SharedPreferenceService.getLanguage();
    final data = L10n.languages.where((e) => e.locale.languageCode == locale.languageCode).toList();
    if (data.isNotEmpty) _language = data.first;
    notifyListeners();
  }

  bool get isDark => _isDark;

  Language get language => _language;

  void switchTheme() async {
    _isDark = !_isDark;
    SharedPreferenceService.setTheme(_isDark);
    notifyListeners();
  }

  void switchLanguage(Language language) async {
    _language = language;
    SharedPreferenceService.setLanguage(language.locale.languageCode);
    notifyListeners();
  }
}
