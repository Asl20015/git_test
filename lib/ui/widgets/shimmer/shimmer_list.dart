import 'package:flutter/material.dart';
import 'package:git_test/ui/widgets/shimmer/shimmer_item.dart';

class ShimmerList extends StatelessWidget {
  const ShimmerList({
    required this.width,
    required this.height,
    required this.length,
    super.key,
  });

  final double width;
  final double height;
  final int length;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (int i = 0; i < length; i++) ...[
          ShimmerItem(
            width: width,
            height: height,
          ),
          const SizedBox(height: 12),
        ],
      ],
    );
  }
}
