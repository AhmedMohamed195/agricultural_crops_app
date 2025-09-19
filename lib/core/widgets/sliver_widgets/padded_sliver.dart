import 'package:flutter/material.dart';

import '../../utils/utils.dart';

class PaddedSliver extends StatelessWidget {
  const PaddedSliver({
    super.key,
    required this.sliver,
    this.verticalPadding = 0.0,
  });
  final Widget? sliver;
  final double verticalPadding;

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: EdgeInsets.symmetric(
        horizontal: defaultPadding,
        vertical: verticalPadding,
      ),
      sliver: sliver,
    );
  }
}
