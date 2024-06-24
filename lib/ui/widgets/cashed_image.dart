import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:git_test/ui/resurses/colors.dart';

class CashedImage extends StatelessWidget {
  final String url;
  final Widget? errorWidget;
  final Widget? loadWidget;
  final double? width;
  final double? height;
  final double radius;

  const CashedImage({
    super.key,
    required this.url,
    this.errorWidget,
    this.loadWidget,
    this.width,
    this.radius = 0,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(radius),
      child: CachedNetworkImage(
        imageUrl: url,
        width: width,
        height: height,
        imageBuilder: (context, provider) {
          return Image(
            image: provider,
            fit: BoxFit.cover,
            width: width,
            height: height,
          );
        },
        placeholder: (context, url) =>
        loadWidget ??
            Container(
              padding: const EdgeInsets.all(70),
              color: Theme.of(context).dividerColor,
              child: const CircularProgressIndicator(),
            ),
        errorWidget: (context, url, error) =>
        errorWidget ??
            Container(
              color: Theme.of(context).dividerColor,
              child: const Icon(
                Icons.image_not_supported_outlined,
                color: AppColors.dangerColor,
              ),
            ),
      ),
    );
  }
}

