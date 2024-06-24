import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:git_test/data/models/user/user.dart';
import 'package:git_test/domain/enums/user_type.dart';
import 'package:git_test/domain/l10n/l10n.dart';
import 'package:git_test/ui/resurses/colors.dart';
import 'package:git_test/ui/resurses/icons.dart';
import 'package:git_test/ui/resurses/text.dart';
import 'package:git_test/ui/screens/main/widgets/user_card/user_card_controller.dart';
import 'package:git_test/ui/screens/user/modal/follower_modal.dart';
import 'package:git_test/ui/screens/user/widgets/link_card.dart';
import 'package:git_test/ui/screens/user/widgets/repository_card.dart';
import 'package:git_test/ui/screens/user/widgets/type_user_card.dart';
import 'package:git_test/ui/state_manager/repositories/actions.dart';
import 'package:git_test/ui/state_manager/repositories/states.dart';
import 'package:git_test/ui/state_manager/store.dart';
import 'package:git_test/ui/widgets/buttons/left_button.dart';
import 'package:git_test/ui/widgets/cashed_image.dart';
import 'package:git_test/ui/widgets/message_card.dart';
import 'package:git_test/ui/widgets/shimmer/shimmer_list.dart';
import 'package:redux/redux.dart';

class UserScreen extends StatefulWidget {
  final UserCardController userCardController;

  const UserScreen({
    super.key,
    required this.userCardController,
  });

  @override
  State<UserScreen> createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  late User user;
  late Store<AppState> _store;

  @override
  void initState() {
    super.initState();
    user = widget.userCardController.user;
    _store = StoreProvider.of<AppState>(context, listen: false);
    if (_store.state.repositoryListState.login != user.login ||
        _store.state.repositoryListState.repositories.isEmpty) {
      _store.dispatch(LoadRepositoryListAction(login: user.login));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const LeftButton(),
        title: Text(user.login),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 12,
        ),
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CashedImage(
                radius: 7,
                url: user.avatar,
                width: 129,
                height: 116,
              ),
              const SizedBox(width: 17),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (user.type != TypeUser.unknown) ...[
                      TypeUserCard(type: user.type),
                      const SizedBox(height: 12),
                    ],
                    LinkCard(url: user.url),
                    const SizedBox(height: 12),
                    GestureDetector(
                      onTap: () {
                        showModalBottomSheet(
                          context: context,
                          isScrollControlled: true,
                          constraints: BoxConstraints(
                            minHeight: 100,
                            maxHeight: MediaQuery.of(context).size.height * 0.8,
                          ),
                          builder: (_) => FollowerModal(
                            login: user.login,
                            followers: widget.userCardController.followers ?? [],
                          ),
                        );
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 8,
                        ),
                        decoration: BoxDecoration(
                          color: AppColors.primary,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            SvgPicture.asset(
                              AppIcons.group,
                              width: 20,
                              height: 20,
                              colorFilter: const ColorFilter.mode(
                                Colors.white,
                                BlendMode.srcIn,
                              ),
                            ),
                            const SizedBox(width: 12),
                            Text(
                              context.loc.followers,
                              style: AppText.button.copyWith(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Text(
            context.loc.listRepositories,
            style: AppText.h4,
          ),
          const SizedBox(height: 16),
          StoreConnector<AppState, RepositoryListState>(
            converter: (store) => store.state.repositoryListState,
            builder: (BuildContext context, RepositoryListState state) {
              if (state.isLoading) {
                return const ShimmerList(
                  width: double.infinity,
                  height: 50,
                  length: 10,
                );
              }

              if (state.isError) return MessageCard.error(message: state.error!);

              if (state.repositories.isEmpty) {
                return MessageCard.empty(message: context.loc.userHasNoRepositories);
              }

              return Column(
                children: [
                  for (var repository in state.repositories) ...[
                    RepositoryCard(repository: repository),
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
