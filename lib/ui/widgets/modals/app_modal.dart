import 'package:flutter/material.dart';
import 'package:git_test/ui/resurses/text.dart';

class AppModal extends StatelessWidget {
  final String title;
  final Widget content;

  const AppModal({
    super.key,
    required this.title,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 25,
        vertical: 16,
      ),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Theme.of(context).scaffoldBackgroundColor,
        borderRadius: const BorderRadius.vertical(
          top: Radius.circular(20),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 3.5,
            width: 38,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: Theme.of(context).textTheme.bodyMedium!.color,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            title,
            style: AppText.h3,
          ),
          const SizedBox(height: 10),
          content,
        ],
      ),
    );
  }
}
