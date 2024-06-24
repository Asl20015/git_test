import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:git_test/ui/resurses/icons.dart';
import 'package:git_test/ui/resurses/text.dart';
import 'package:git_test/ui/widgets/shadow_card.dart';
import 'package:url_launcher/url_launcher.dart';

class LinkCard extends StatelessWidget {
  final String url;

  const LinkCard({
    super.key,
    required this.url,
  });

  @override
  Widget build(BuildContext context) {
    return ShadowCard(
      onTap: () {
        launchUrl(
          Uri.parse(url),
          mode: LaunchMode.inAppWebView,
        );
      },
      child: Row(
        children: [
          SvgPicture.asset(
            AppIcons.link,
            width: 20,
            height: 20,
            colorFilter: ColorFilter.mode(
              Theme.of(context).textTheme.bodyMedium!.color!,
              BlendMode.srcIn,
            ),
          ),
          const SizedBox(width: 12),
          Text(
            url,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: AppText.body,
          ),
        ],
      ),
    );
  }
}
