import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:agricultural_crops_app/core/extensions/text_style.dart';
import 'package:agricultural_crops_app/core/widgets/svg_image.dart';

import '../../../../core/utils/utils.dart';

class AppBarSection extends StatelessWidget {
  const AppBarSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgImage(AppImages.appLogo, height: Sizes.s34, width: Sizes.s34),
        const Gap(Sizes.s4),
        Text(
          LocaleKeys.appName.tr(),
          style: AppTextStyles.style24.copyColorWith(AppColors.veryDarkGray600),
        ),
        Spacer(),
        Container(
          height: Sizes.s44,
          width: Sizes.s44,
          decoration: BoxDecoration(
            color: AppColors.lightGray13,
            borderRadius: BorderRadius.circular(Sizes.s30),
          ),
          child: Center(
            child: Stack(
              children: [
                SvgImage(
                  AppIcons.notification,
                  height: Sizes.s22,
                  width: Sizes.s22,
                ),
                PositionedDirectional(
                  top: Sizes.s2,
                  start: Sizes.s2,
                  child: Container(
                    height: Sizes.s8,
                    width: Sizes.s8,
                    decoration: BoxDecoration(
                      color: AppColors.red,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        const Gap(Sizes.s8),
        Container(
          height: Sizes.s44,
          width: Sizes.s44,
          decoration: BoxDecoration(
            color: AppColors.lightGray13,
            borderRadius: BorderRadius.circular(Sizes.s30),
          ),
          child: SvgImage(
            AppIcons.shoppingBasket,
            height: Sizes.s22,
            width: Sizes.s22,
          ),
        ),
      ],
    );
  }
}
