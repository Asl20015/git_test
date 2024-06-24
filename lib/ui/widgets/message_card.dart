import 'package:flutter/material.dart';
import 'package:git_test/ui/resurses/colors.dart';
import 'package:git_test/ui/resurses/text.dart';

class MessageCard extends StatelessWidget {
  final String message;
  final Widget icon;
  final Color? color;

  const MessageCard({
    super.key,
    required this.message,
    required this.icon,
    this.color,
  });

  factory MessageCard.empty({required String message}) {
    return MessageCard(
      message: message,
      icon: const Icon(
        Icons.clear,
        size: 20,
        color: Colors.white,
      ),
    );
  }

  factory MessageCard.error({required String message}) {
    return MessageCard(
      message: message,
      color: AppColors.dangerColor,
      icon: const Icon(
        Icons.warning_amber_outlined,
        size: 20,
        color: Colors.white,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 20,
        left: 60,
        right: 60,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: color ?? AppColors.primary,
            ),
            child: icon,
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Text(
                message,
                style: AppText.body,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
