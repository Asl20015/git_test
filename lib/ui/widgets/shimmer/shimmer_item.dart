import 'package:flutter/material.dart';
import 'package:git_test/domain/services/settings_service.dart';
import 'package:git_test/ui/widgets/shimmer/shimmer.dart';
import 'package:provider/provider.dart';

class ShimmerItem extends StatefulWidget {
  const ShimmerItem({
    required this.width,
    required this.height,
    super.key,
  });

  final double width;
  final double height;

  @override
  State<ShimmerItem> createState() => _ShimmerItemState();
}

class _ShimmerItemState extends State<ShimmerItem> {
  Color colorFirst = Colors.grey.shade100;
  Color colorSecond = Colors.grey.shade200;
  Color colorThird = Colors.grey.shade300;

  @override
  void initState() {
    super.initState();
    final isDark = Provider.of<SettingsService>(context, listen: false).isDark;
    if (isDark) {
      colorFirst = Theme.of(context).cardColor;
      colorSecond = Theme.of(context).cardColor.withOpacity(0.5);
      colorThird = Theme.of(context).cardColor.withOpacity(0.1);
    }
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final isDark = Provider.of<SettingsService>(context).isDark;
    if (isDark) {
      colorFirst = Theme.of(context).cardColor;
      colorSecond = Theme.of(context).cardColor.withOpacity(0.5);
      colorThird = Theme.of(context).cardColor.withOpacity(0.1);
    } else {
      colorFirst = Colors.grey.shade100;
      colorSecond = Colors.grey.shade200;
      colorThird = Colors.grey.shade300;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Shimmer(
      gradient: LinearGradient(
        colors: [
          colorFirst,
          colorSecond.withOpacity(0.8),
          colorSecond,
          colorThird.withOpacity(0.8),
          colorThird,
        ],
        end: const Alignment(1, 0.3),
      ),
      child: Container(
        width: widget.width,
        height: widget.height,
        decoration: BoxDecoration(
          color: Theme.of(context).cardColor,
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }
}
