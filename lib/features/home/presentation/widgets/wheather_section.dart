import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:agricultural_crops_app/core/extensions/text_style.dart';
import 'package:agricultural_crops_app/core/widgets/svg_image.dart';

import '../../../../core/utils/utils.dart';

class WeatherSection extends StatefulWidget {
  final Function(bool isWinter)? onSeasonChanged;
  const WeatherSection({super.key, this.onSeasonChanged});

  @override
  State<WeatherSection> createState() => _WeatherSectionState();
}

class _WeatherSectionState extends State<WeatherSection> {
  bool isWinter = true; // Default to winter as shown in your UI

  void _onSeasonTap(bool selectedIsWinter) {
    if (isWinter != selectedIsWinter) {
      setState(() {
        isWinter = selectedIsWinter;
      });
      widget.onSeasonChanged?.call(isWinter);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text("134 ${LocaleKeys.product.tr()}", style: AppTextStyles.style14),
        const Spacer(),
        Container(
          padding: const EdgeInsets.all(Sizes.s4),
          decoration: BoxDecoration(
            color: AppColors.lightGray15,
            borderRadius: BorderRadius.circular(Sizes.s50),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Winter Section
              GestureDetector(
                onTap: () => _onSeasonTap(true),
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: Sizes.s12,
                    vertical: Sizes.s8,
                  ),
                  decoration: BoxDecoration(
                    color: isWinter ? AppColors.white : AppColors.transparent,
                    borderRadius: BorderRadius.circular(Sizes.s20),
                    boxShadow: isWinter
                        ? [
                            BoxShadow(
                              color: AppColors.lightGray25,
                              blurRadius: 10,
                              offset: const Offset(0, 2),
                            ),
                          ]
                        : null,
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SvgImage(
                        AppIcons.rainCloud,
                        color: isWinter ? null : AppColors.darkGray600,
                      ),
                      const Gap(Sizes.s10),
                      Text(
                        LocaleKeys.seasonWinter.tr(),
                        style: AppTextStyles.style14.copyColorWith(
                          isWinter ? AppColors.veryDarkGray600 : null,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Gap(Sizes.s8),
              // Summer Section
              GestureDetector(
                onTap: () => _onSeasonTap(false),
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: Sizes.s12,
                    vertical: Sizes.s8,
                  ),
                  decoration: BoxDecoration(
                    color: !isWinter ? AppColors.white : AppColors.transparent,
                    borderRadius: BorderRadius.circular(Sizes.s20),
                    boxShadow: !isWinter
                        ? [
                            BoxShadow(
                              color: AppColors.lightGray25,
                              blurRadius: 10,
                              offset: const Offset(0, 2),
                            ),
                          ]
                        : null,
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SvgImage(
                        AppIcons.sun,
                        color: !isWinter ? AppColors.yellow600 : null,
                      ),
                      const Gap(Sizes.s10),
                      Text(
                        LocaleKeys.seasonSummer.tr(),
                        style: AppTextStyles.style14.copyColorWith(
                          !isWinter ? AppColors.veryDarkGray600 : null,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
