import 'package:flutter/material.dart';
import 'package:agricultural_crops_app/core/utils/app_colors.dart';
import 'package:agricultural_crops_app/core/utils/app_text_styles.dart';
import 'package:agricultural_crops_app/core/utils/sizes.dart';

class TextSection extends StatelessWidget {
  final String text;
  final FontWeight fontWeight;
  const TextSection({super.key, required this.text, required this.fontWeight});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Sizes.s24),
      child: Text(
        text,
        style: AppTextStyles.style14.copyWith(
          fontWeight: fontWeight,
          color: AppColors.veryDarkGray500,
        ),
      ),
    );
  }
}
