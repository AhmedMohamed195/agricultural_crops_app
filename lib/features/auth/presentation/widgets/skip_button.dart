import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:agricultural_crops_app/config/routes/routes.dart';
import 'package:agricultural_crops_app/core/extensions/text_style.dart';
import 'package:agricultural_crops_app/core/utils/utils.dart';

class SkipButton extends StatelessWidget {
  const SkipButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () =>
          AppNavigator.navigateNamedReplace(AppRoutes.mainLayoutScreen),
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: Sizes.s23,
          vertical: Sizes.s15,
        ),
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(Sizes.s30),
          border: Border.all(color: AppColors.borderLight),
        ),
        child: Text(
          LocaleKeys.skip.tr(),
          style: AppTextStyles.style16.copyColorWith(AppColors.veryDarkGray500),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
