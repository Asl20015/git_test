import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:git_test/data/models/repository/repository.dart';
import 'package:git_test/domain/l10n/l10n.dart';
import 'package:git_test/ui/resurses/icons.dart';
import 'package:git_test/ui/resurses/text.dart';
import 'package:git_test/ui/widgets/shadow_card.dart';

class RepositoryCard extends StatelessWidget {
  final Repository repository;

  const RepositoryCard({
    super.key,
    required this.repository,
  });

  @override
  Widget build(BuildContext context) {
    return ShadowCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              SvgPicture.asset(
                AppIcons.repository,
                width: 20,
                height: 20,
                colorFilter: ColorFilter.mode(
                  Theme.of(context).textTheme.bodyMedium!.color!,
                  BlendMode.srcIn,
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Text(
                  repository.name,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: AppText.h5,
                ),
              ),
              Text('- ${repository.defaultBranch}'),
            ],
          ),
          const SizedBox(height: 8),
          if (repository.description != null) ...[
            Text(
              repository.description!,
              style: AppText.small,
            ),
            const SizedBox(height: 8),
            Text(
              '${context.loc.forkCount}: ${repository.forksCount}',
              style: AppText.small.copyWith(
                color: Theme.of(context).textTheme.bodyMedium!.color!.withOpacity(0.5),
              ),
            ),
          ],
        ],
      ),
    );
  }
}
