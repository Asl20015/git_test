import 'package:flutter/material.dart';
import 'package:git_test/ui/resurses/colors.dart';

class LeftButton extends StatelessWidget {
  final Function()? onPressed;

  const LeftButton({
    super.key,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(
        Icons.arrow_back,
        color: AppColors.primary,
      ),
      onPressed: onPressed ?? Navigator.of(context).pop,
    );
  }
}
