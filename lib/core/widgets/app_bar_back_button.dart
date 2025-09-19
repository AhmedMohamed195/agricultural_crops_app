import 'package:flutter/material.dart';

import '../utils/utils.dart';

class AppBarBackButton extends StatelessWidget {
  const AppBarBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () => Navigator.pop(context),
      icon: const Icon(
        Icons.arrow_back_ios_new,
        size: Sizes.s20,
        color: AppColors.textPrimary,
      ),
    );
  }
}
