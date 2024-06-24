import 'package:flutter/material.dart';
import 'package:git_test/data/models/user/user.dart';
import 'package:git_test/domain/l10n/l10n.dart';
import 'package:git_test/ui/screens/main/widgets/user_card/user_card.dart';
import 'package:git_test/ui/widgets/message_card.dart';
import 'package:git_test/ui/widgets/modals/app_modal.dart';

class FollowerModal extends StatelessWidget {
  final String login;
  final List<User> followers;

  const FollowerModal({
    super.key,
    required this.followers,
    required this.login,
  });

  @override
  Widget build(BuildContext context) {
    return AppModal(
      title: '${context.loc.followers} $login',
      content: Column(
        children: [
          if (followers.isEmpty)
            MessageCard.empty(message: context.loc.listFollowersEmpty)
          else
            SizedBox(
              height: 500,
              child: ListView(
                shrinkWrap: true,
                children: [
                  for (var user in followers) ...[
                    UserCard(user: user),
                    const SizedBox(height: 12),
                  ],
                ],
              ),
            ),
        ],
      ),
    );
  }
}
