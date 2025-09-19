import 'package:flutter/material.dart';

import '../utils/utils.dart';

class AppBarDivider extends StatelessWidget {
  const AppBarDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Divider(color: AppColors.borderLight, thickness: 1.5);
  }
}
