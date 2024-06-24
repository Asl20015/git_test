import 'package:flutter/material.dart';
import 'package:git_test/ui/screens/main/main_screen.dart';
import 'package:git_test/ui/screens/settings/settings_screen.dart';
import 'package:git_test/ui/screens/user/user_screen.dart';

import 'ui/screens/main/widgets/user_card/user_card_controller.dart';

class AppRoutes {
  static const setting = '/settings';
  static const main = '/main';
  static const user = '/user';

  static MaterialPageRoute onGenerateRoute(RouteSettings settings) {
    final arg = settings.arguments as AppRouterArguments?;

    final routes = <String, WidgetBuilder>{
      AppRoutes.setting: (BuildContext context) => const SettingsScreen(),
      AppRoutes.main: (BuildContext context) => const MainScreen(),
      AppRoutes.user: (BuildContext context) => UserScreen(
            userCardController: arg!.userCardController!,
          ),
    };

    WidgetBuilder? builder = routes[settings.name];
    return MaterialPageRoute(builder: (ctx) => builder!(ctx));
  }
}

class AppRouterArguments {
  final UserCardController? userCardController;

  AppRouterArguments({
    this.userCardController,
  });
}
