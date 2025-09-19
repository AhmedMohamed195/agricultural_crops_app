import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:agricultural_crops_app/core/utils/app_icons.dart';
import 'package:agricultural_crops_app/core/utils/app_strings.g.dart';
import 'package:agricultural_crops_app/core/utils/sizes.dart';
import 'package:agricultural_crops_app/features/product_detail/presentation/widgets/categories_detail_section.dart';

class CategoriesProductSection extends StatelessWidget {
  const CategoriesProductSection({super.key});

  @override
  Widget build(BuildContext context) {
    List<CategoriesDetailSection> products = [
      CategoriesDetailSection(
        imagePath: AppIcons.item1group,
        text1: LocaleKeys.season.tr(),
        text2: LocaleKeys.summer.tr(),
      ),
      CategoriesDetailSection(
        imagePath: AppIcons.item2group,
        text1: LocaleKeys.minimum.tr(),
        text2: LocaleKeys.onehundredthousandtons.tr(),
      ),
      CategoriesDetailSection(
        imagePath: AppIcons.item1group,
        text1: LocaleKeys.negotiable.tr(),
        text2: LocaleKeys.no.tr(),
      ),
      CategoriesDetailSection(
        imagePath: AppIcons.item1group,
        text1: LocaleKeys.sorting_grade.tr(),
        text2: LocaleKeys.first.tr(),
      ),
    ];

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Sizes.s24),
      child: Column(
        children: [
          ...List.generate(
            products.length,
            (index) => Column(children: [products[index], const Divider()]),
          ),
        ],
      ),
    );
  }
}
