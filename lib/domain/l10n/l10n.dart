import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:git_test/data/models/language.dart';

extension LocalizedBuildContext on BuildContext {
  AppLocalizations get loc => AppLocalizations.of(this)!;
}

class L10n {
  static List<Language> languages = <Language>[
    Language(
      locale: const Locale('en'),
      name: 'English',
    ),
    Language(
      locale: const Locale('ru'),
      name: 'Русский',
    ),
  ];
}
