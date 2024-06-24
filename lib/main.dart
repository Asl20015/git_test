import 'package:flutter/material.dart';
import 'package:git_test/domain/di/locator.dart';
import 'package:git_test/domain/l10n/l10n.dart';
import 'package:git_test/domain/services/settings_service.dart';
import 'package:git_test/route.dart';
import 'package:git_test/ui/resurses/themes/dark_theme.dart';
import 'package:git_test/ui/resurses/themes/light_theme.dart';
import 'package:git_test/ui/screens/main/main_screen.dart';
import 'package:git_test/ui/state_manager/store.dart';
import 'package:provider/provider.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  final locator = LocatorService();
  runApp(MyApp(locator: locator));
}

class MyApp extends StatelessWidget {
  final LocatorService locator;

  const MyApp({
    super.key,
    required this.locator,
  });

  @override
  Widget build(BuildContext context) {
    return StoreProvider<AppState>(
      store: locator.store,
      child: ChangeNotifierProvider<SettingsService>(
        create: (BuildContext context) => SettingsService(),
        builder: (context, child) {
          final settingsService = Provider.of<SettingsService>(context);
          return MaterialApp(
            theme: settingsService.isDark ? darkThemeData : lightThemeData,
            home: const MainScreen(),
            locale: settingsService.language.locale,
            localizationsDelegates: AppLocalizations.localizationsDelegates,
            supportedLocales: L10n.languages.map((e) => e.locale).toList(),
            navigatorKey: locator.navigatorKey,
            onGenerateRoute: AppRoutes.onGenerateRoute,
          );
        },
      ),
    );
  }
}
