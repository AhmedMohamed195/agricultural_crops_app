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

class CategoriesItemSection extends StatelessWidget {
  final String image;
  const CategoriesItemSection({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsetsDirectional.only(
        top: Sizes.s10,
        bottom: Sizes.s10,
        start: Sizes.s5,
        end: Sizes.s10,
      ),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(Sizes.s10),
        border: Border.all(color: AppColors.lightGray12),
        boxShadow: const [
          BoxShadow(
            color: AppColors.lightGray12,
            blurRadius: 10,
            offset: Offset(0, 4),
            spreadRadius: 0,
          ),
        ],
      ),
      child: Stack(
        children: [
          PositionedDirectional(
            top: 0,
            end: 0,
            child: Row(
              children: [
                Text(
                  '4.6',
                  style: AppTextStyles.style10.bold.copyColorWith(
                    AppColors.lightGray35,
                  ),
                ),
                Icon(
                  Icons.star,
                  color: AppColors.orangeWarm200,
                  size: Sizes.s14,
                ),
              ],
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(image, height: Sizes.s80, width: Sizes.s100),
                  const Gap(Sizes.s2),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SvgImage(AppIcons.checkCircle),
                      Text(
                        LocaleKeys.negotiable.tr(),
                        style: AppTextStyles.style12.copyColorWith(
                          AppColors.darkGray900,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const Gap(Sizes.s10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      LocaleKeys.tomato.tr(),
                      style: AppTextStyles.style16.bold,
                    ),
                    Text(
                      LocaleKeys.vegetable.tr(),
                      style: AppTextStyles.style12.copyWith(
                        fontWeight: FontWeight.w400,
                        color: AppColors.darkGray900,
                      ),
                    ),
                    const Gap(Sizes.s10),
                    Row(
                      children: [
                        SvgImage(AppIcons.userCircle),
                        const Gap(Sizes.s5),
                        Text(
                          LocaleKeys.merchantName.tr(),
                          style: AppTextStyles.style12.copyColorWith(
                            AppColors.darkGray900,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        SvgImage(AppIcons.locationPin),
                        const Gap(Sizes.s5),
                        Text(
                          LocaleKeys.riyadh.tr(),
                          style: AppTextStyles.style12.copyColorWith(
                            AppColors.darkGray900,
                          ),
                        ),
                      ],
                    ),
                    const Gap(Sizes.s5),
                    Row(
                      children: [
                        SvgImage(AppIcons.wheat),
                        const Gap(Sizes.s5),
                        Text(
                          LocaleKeys.availableQuantity.tr(),
                          style: AppTextStyles.style12.copyColorWith(
                            AppColors.darkGray900,
                          ),
                        ),
                        Spacer(),
                        Text(
                          '450 الف طن',
                          style: AppTextStyles.style12.copyColorWith(
                            AppColors.darkGray900,
                          ),
                        ),
                      ],
                    ),
                    const Gap(Sizes.s5),
                    Row(
                      children: [
                        SvgImage(AppIcons.arrowdowntoline),
                        const Gap(Sizes.s5),
                        Text(
                          LocaleKeys.minPrice.tr(),
                          style: AppTextStyles.style12.copyColorWith(
                            AppColors.darkGray900,
                          ),
                        ),
                        Spacer(),
                        Text(
                          '100 الف طن',
                          style: AppTextStyles.style12.copyColorWith(
                            AppColors.darkGray900,
                          ),
                        ),
                      ],
                    ),
                    const Gap(Sizes.s12),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          '40 الف',
                          style: AppTextStyles.style12.bold.copyColorWith(
                            AppColors.secondary,
                          ),
                        ),
                        const Gap(Sizes.s5),
                        SvgImage(AppIcons.saudiRiyalSymbol),
                        Text(
                          '/ طن',
                          style: AppTextStyles.style12.bold.copyColorWith(
                            AppColors.secondary,
                          ),
                        ),
                        Spacer(),
                        Container(
                          height: Sizes.s30,
                          width: Sizes.s40,
                          decoration: BoxDecoration(
                            color: AppColors.white,
                            borderRadius: BorderRadius.circular(Sizes.s10),
                            border: Border.all(color: AppColors.lightGray27),
                          ),
                          child: SvgImage(AppIcons.shoppingBasketPlus),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
