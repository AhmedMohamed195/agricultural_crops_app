import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:agricultural_crops_app/core/widgets/main_text_field.dart';

import '../../../../core/utils/utils.dart';
import '../../../../core/widgets/svg_image.dart';

class SearchSection extends StatelessWidget {
  const SearchSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: MainTextField(
            hintText: LocaleKeys.search.tr(),
            prefixIconPath: AppIcons.searchNormal,
            borderColor: AppColors.transparent,
          ),
        ),
        Gap(Sizes.s10),
        Container(
          height: Sizes.s44,
          width: Sizes.s44,
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(Sizes.s10),
            border: Border.all(color: AppColors.border),
          ),
          child: SvgImage(AppIcons.slidersVerticalAlt),
        ),
      ],
    );
  }
}
