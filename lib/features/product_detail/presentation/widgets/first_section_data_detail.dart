import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:agricultural_crops_app/core/extensions/text_style.dart';
import 'package:agricultural_crops_app/core/utils/app_colors.dart';
import 'package:agricultural_crops_app/core/utils/app_icons.dart';
import 'package:agricultural_crops_app/core/utils/app_strings.g.dart';
import 'package:agricultural_crops_app/core/utils/app_text_styles.dart';
import 'package:agricultural_crops_app/core/utils/sizes.dart';
import 'package:agricultural_crops_app/core/widgets/svg_image.dart';

class FirstSectionDataDetail extends StatelessWidget {
  const FirstSectionDataDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Sizes.s24),
      child: Row(
        children: [
          Text(
            LocaleKeys.localGarlic.tr(),
            style: AppTextStyles.style20.copyWith(fontWeight: FontWeight.w700),
          ),
          Spacer(),
          Row(
            children: [
              Text(
                LocaleKeys.forty_thousand.tr(),
                style: AppTextStyles.style16.bold.copyColorWith(
                  AppColors.primary,
                ),
              ),
              const Gap(Sizes.s5),
              SvgImage(
                AppIcons.saudiRiyalSymbol,
                fit: BoxFit.fill,
                height: Sizes.s20,
              ),
              Text(
                LocaleKeys.perton.tr(),
                style: AppTextStyles.style16.bold.copyColorWith(
                  AppColors.primary,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
