import 'package:flutter/material.dart';
import 'package:git_test/ui/resurses/colors.dart';

class ScrollUpButton extends StatelessWidget {
  final Function() func;

  const ScrollUpButton({
    super.key,
    required this.func,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: GestureDetector(
        onTap: func,
        child: Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: AppColors.primary,
          ),
          child: const Icon(
            Icons.keyboard_arrow_up,
            color: Colors.white,
            size: 30,
          ),
        ),
      ),
    );
  }
}
