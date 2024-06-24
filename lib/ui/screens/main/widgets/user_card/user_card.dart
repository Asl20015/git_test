import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:git_test/data/models/user/user.dart';
import 'package:git_test/domain/di/get_it_services.dart';
import 'package:git_test/domain/l10n/l10n.dart';
import 'package:git_test/ui/resurses/icons.dart';
import 'package:git_test/ui/resurses/text.dart';
import 'package:git_test/ui/screens/main/widgets/user_card/user_card_controller.dart';
import 'package:git_test/ui/widgets/cashed_image.dart';
import 'package:git_test/ui/widgets/shadow_card.dart';

class UserCard extends StatefulWidget {
  final User user;

  const UserCard({
    super.key,
    required this.user,
  });

  @override
  State<UserCard> createState() => _UserCardState();
}

class _UserCardState extends State<UserCard> {
  late UserCardController userCardController;

  @override
  void initState() {
    super.initState();
    userCardController = UserCardController(
      user: widget.user,
      updateState: () => setState(() {}),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ShadowCard(
      onTap: () => getItService.navigatorService.onUser(userCardController: userCardController),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CashedImage(
            url: widget.user.avatar,
            width: 50,
            height: 50,
            radius: 7,
            loadWidget: const _IconUser(),
            errorWidget: const _IconUser(),
          ),
          const SizedBox(width: 12),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.user.login,
                style: AppText.body,
              ),
              const SizedBox(height: 2),
              Text(
                userCardController.followers == null
                    ? '...'
                    : '${userCardController.followers!.length} ${context.loc.followers.toLowerCase()}',
                style: AppText.small,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _IconUser extends StatelessWidget {
  const _IconUser({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).scaffoldBackgroundColor,
      padding: const EdgeInsets.all(14),
      child: SvgPicture.asset(
        AppIcons.user,
        colorFilter: ColorFilter.mode(
          Theme.of(context).textTheme.bodyMedium!.color!,
          BlendMode.srcIn,
        ),
      ),
    );
  }
}
