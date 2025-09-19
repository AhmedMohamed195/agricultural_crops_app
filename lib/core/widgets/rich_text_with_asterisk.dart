import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:agricultural_crops_app/core/extensions/text_style.dart';

import '../utils/utils.dart';

class RichTextWithAsterisk extends StatelessWidget {
  final String text;
  const RichTextWithAsterisk({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: text.tr(),
            style: AppTextStyles.style14.bold.copyColorWith(
              AppColors.veryDarkGray300,
            ),
          ),
          const TextSpan(text: whiteSpace),
          TextSpan(
            text: asterisk,
            style: AppTextStyles.style14.bold.copyColorWith(AppColors.red),
          ),
        ],
      ),
    );
  }
}
