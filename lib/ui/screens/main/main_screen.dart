import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:git_test/domain/di/get_it_services.dart';
import 'package:git_test/domain/l10n/l10n.dart';
import 'package:git_test/ui/controllers/scroll_up_controller.dart';
import 'package:git_test/ui/resurses/icons.dart';
import 'package:git_test/ui/resurses/text.dart';
import 'package:git_test/ui/screens/main/main_controller.dart';
import 'package:git_test/ui/state_manager/store.dart';
import 'package:git_test/ui/state_manager/users/states.dart';
import 'package:git_test/ui/widgets/buttons/scroll_up_button.dart';
import 'package:git_test/ui/screens/main/widgets/user_card/user_card.dart';
import 'package:git_test/ui/widgets/message_card.dart';
import 'package:git_test/ui/widgets/shimmer/shimmer_list.dart';
import 'package:redux/redux.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final scrollUpController = ScrollUpController();
  late Store<AppState> _store;
  late MainController controller;

  @override
  void initState() {
    super.initState();
    _store = StoreProvider.of<AppState>(context, listen: false);
    controller = MainController(store: _store);
    scrollUpController.init(
      showButton: ScrollUpButton(func: scrollUpController.jumpToStart),
      setState: () => setState(() {}),
      addPagination: controller.onLoadNextPage,
    );
  }

  @override
  void dispose() {
    scrollUpController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(context.loc.searchGitHub),
        actions: [
          IconButton(
            onPressed: getItService.navigatorService.onSettings,
            icon: SvgPicture.asset(
              AppIcons.setting,
              width: 24,
              height: 24,
              colorFilter: ColorFilter.mode(
                Theme.of(context).appBarTheme.iconTheme!.color!,
                BlendMode.srcIn,
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: scrollUpController.scrollButton,
      body: ListView(
        controller: scrollUpController.scrollController,
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 8,
        ),
        children: [
          TextField(
            textInputAction: TextInputAction.search,
            style: AppText.body,
            controller: controller.queryController,
            onSubmitted: (_) => controller.searchUsers(),
            decoration: InputDecoration(
              label: Text(context.loc.search),
              suffixIcon: IconButton(
                onPressed: controller.queryController.clear,
                icon: const Icon(Icons.clear),
              ),
            ),
          ),
          const SizedBox(height: 16),
          StoreConnector<AppState, UserListState>(
            converter: (store) => store.state.userListState,
            builder: (BuildContext context, UserListState state) {
              if (state.isLoading) {
                return const ShimmerList(
                  width: double.infinity,
                  height: 50,
                  length: 10,
                );
              }

              if (state.isError) return MessageCard.error(message: state.error!);

              if (state.page == 0) {
                return MessageCard(
                  message: context.loc.startWritingFindUsersOnGitHub,
                  icon: SvgPicture.asset(
                    AppIcons.search,
                    width: 20,
                    height: 20,
                    colorFilter: const ColorFilter.mode(
                      Colors.white,
                      BlendMode.srcIn,
                    ),
                  ),
                );
              }

              if (state.users.isEmpty) return MessageCard.empty(message: context.loc.noUsersFound);

              return Column(
                children: [
                  for (var user in state.users) ...[
                    UserCard(user: user),
                    const SizedBox(height: 12),
                  ],
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
