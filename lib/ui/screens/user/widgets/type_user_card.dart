import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:git_test/domain/enums/user_type.dart';
import 'package:git_test/domain/l10n/l10n.dart';
import 'package:git_test/ui/resurses/icons.dart';
import 'package:git_test/ui/resurses/text.dart';

class TypeUserCard extends StatelessWidget {
  final TypeUser type;

  const TypeUserCard({
    super.key,
    required this.type,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(width: 16),
        SvgPicture.asset(
          type == TypeUser.user ? AppIcons.user : AppIcons.organization,
          width: 20,
          height: 20,
          colorFilter: ColorFilter.mode(
            Theme.of(context).textTheme.bodyMedium!.color!,
            BlendMode.srcIn,
          ),
        ),
        const SizedBox(width: 12),
        Text(
          type == TypeUser.user ? context.loc.user : context.loc.organization,
          style: AppText.body,
        ),
      ],
    );
  }
}
