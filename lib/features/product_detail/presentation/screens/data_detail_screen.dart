import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:agricultural_crops_app/core/utils/utils.dart';
import 'package:agricultural_crops_app/core/widgets/svg_image.dart';
import 'package:agricultural_crops_app/features/product_detail/presentation/widgets/categories_product_section.dart';
import 'package:agricultural_crops_app/features/product_detail/presentation/widgets/first_section_data_detail.dart';
import 'package:agricultural_crops_app/features/product_detail/presentation/widgets/last_data_sections.dart';
import 'package:agricultural_crops_app/features/product_detail/presentation/widgets/text_section.dart';

class DataDetailScreen extends StatelessWidget {
  const DataDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // sections One (Title):-
          FirstSectionDataDetail(),
          //  Group Of Items:-
          CategoriesProductSection(),

          // Text (cropLocation) :-
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: Sizes.s24),
            child: Text(
              LocaleKeys.cropLocation.tr(),
              style: AppTextStyles.style14.copyWith(
                fontWeight: FontWeight.w700,
                color: AppColors.veryDarkGray500,
              ),
            ),
          ),
          const Gap(Sizes.s15),
          // Map Location item :-
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: Sizes.s24),
            child: Container(
              decoration: BoxDecoration(
                color: AppColors.background,
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: AppColors.lightGray21, width: 1.5),
              ),
              height: Sizes.s115,
              width: Sizes.s340,
              child: SvgImage(AppIcons.maplocation),
            ),
          ),
          const Gap(Sizes.s15),
          // Text One :-
          TextSection(
            text: LocaleKeys.locationaddressmohammedarifstreet.tr(),
            fontWeight: FontWeight.w400,
          ),

          const Gap(Sizes.s20),
          // Text Two :-
          TextSection(
            text: LocaleKeys.comments.tr(),
            fontWeight: FontWeight.w700,
          ),

          const Gap(Sizes.s5),

          // Text Three :-
          TextSection(
            text: LocaleKeys.cropdescription.tr(),
            fontWeight: FontWeight.w400,
          ),

          const Gap(Sizes.s17),

          // Last Section :-
          LastDataSection(),
        ],
      ),
    );
  }
}
