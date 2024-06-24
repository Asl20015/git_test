import 'package:flutter/cupertino.dart';
import 'package:git_test/route.dart';
import 'package:git_test/ui/screens/main/widgets/user_card/user_card_controller.dart';

class NavigatorService {
  final GlobalKey<NavigatorState> navigatorKey;

  NavigatorService({required this.navigatorKey});

  void onPop() => navigatorKey.currentState!.pop();

  void onSettings() => navigatorKey.currentState!.pushNamed(AppRoutes.setting);

  void onUser({required UserCardController userCardController}) {
    navigatorKey.currentState!.pushNamed(
      AppRoutes.user,
      arguments: AppRouterArguments(userCardController: userCardController),
    );
  }
}
