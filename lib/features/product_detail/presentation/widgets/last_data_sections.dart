import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:agricultural_crops_app/config/routes/app_navigator.dart';
import 'package:agricultural_crops_app/config/routes/app_routes.dart';
import 'package:agricultural_crops_app/core/utils/app_colors.dart';
import 'package:agricultural_crops_app/core/utils/app_icons.dart';
import 'package:agricultural_crops_app/core/utils/app_strings.g.dart';
import 'package:agricultural_crops_app/core/utils/app_text_styles.dart';
import 'package:agricultural_crops_app/core/utils/sizes.dart';
import 'package:agricultural_crops_app/core/widgets/svg_image.dart';

class LastDataSection extends StatelessWidget {
  const LastDataSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Sizes.s120,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppColors.surface,
        border: Border.all(color: AppColors.lightGray21, width: 1.5),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: Sizes.s24,
              vertical: Sizes.s5,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Gap(Sizes.s14),
                Text(
                  LocaleKeys.availableQuantity.tr(),
                  style: AppTextStyles.style12.copyWith(
                    fontWeight: FontWeight.w400,
                    color: AppColors.darkGray900,
                  ),
                  textAlign: TextAlign.right,
                ),
                Text(
                  LocaleKeys.sixhundredthousandtons.tr(),
                  style: AppTextStyles.style16.copyWith(
                    fontWeight: FontWeight.w700,
                    color: AppColors.textPrimary,
                  ),
                  textAlign: TextAlign.right,
                ),
              ],
            ),
          ),
          // const Gap(Sizes.s115),
          Spacer(),
          // Buttons Sections :-
          GestureDetector(
            onTap: () =>
                AppNavigator.navigateNamedTo(AppRoutes.basketscreencontent),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: Sizes.s24,
                vertical: Sizes.s14,
              ),
              child: Container(
                height: Sizes.s50,
                width: Sizes.s140,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Sizes.s15),
                  color: AppColors.primary,
                  border: Border.all(color: AppColors.secondary, width: 1.5),
                ),
                child: Row(
                  children: [
                    const Gap(Sizes.s10),
                    SvgImage(
                      AppIcons.shoppingCartPlus,
                      height: Sizes.s24,
                      width: Sizes.s24,
                    ),
                    const Gap(Sizes.s10),
                    Text(
                      LocaleKeys.addtocart.tr(),
                      style: AppTextStyles.style16.copyWith(
                        fontWeight: FontWeight.w700,
                        color: AppColors.surface,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
