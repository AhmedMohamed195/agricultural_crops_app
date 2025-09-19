import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:agricultural_crops_app/config/routes/app_navigator.dart';
import 'package:agricultural_crops_app/config/routes/app_routes.dart';
import 'package:agricultural_crops_app/core/extensions/text_style.dart';
import 'package:agricultural_crops_app/core/widgets/svg_image.dart';

import '../../../../core/utils/utils.dart';

class CategoriesSection extends StatelessWidget {
  final Function(int categoryId)? onCategoryTap;
  final int selectedCategoryId;
  const CategoriesSection({
    super.key,
    this.onCategoryTap,
    required this.selectedCategoryId,
  });

  @override
  Widget build(BuildContext context) {
    final categories = [
      CategoryModel(
        id: 0,
        iconPath: AppIcons.gridSquareCircle,
        label: LocaleKeys.all.tr(),
        backgroundColor: AppColors.primary.withValues(alpha: 0.6),
        isSelected: selectedCategoryId == 0,
      ),
      CategoryModel(
        id: 1,
        iconPath: AppIcons.tomato,
        label: LocaleKeys.tomato.tr(),
        isSelected: selectedCategoryId == 1,
      ),
      CategoryModel(
        id: 2,
        iconPath: AppIcons.cucumber,
        label: LocaleKeys.cucumber.tr(),
        isSelected: selectedCategoryId == 2,
      ),
      CategoryModel(
        id: 3,
        iconPath: AppIcons.banana,
        label: LocaleKeys.banana.tr(),
        isSelected: selectedCategoryId == 3,
      ),
      CategoryModel(
        id: 4,
        iconPath: AppIcons.watermelon,
        label: LocaleKeys.watermelon.tr(),
        isSelected: selectedCategoryId == 4,
      ),
    ];

    return SizedBox(
      height: Sizes.s100,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        separatorBuilder: (context, index) => const Gap(Sizes.s25),
        itemBuilder: (context, index) {
          final category = categories[index];
          return GestureDetector(
            onTap: () {
              onCategoryTap?.call(category.id);
              if (category.id != 0) {
                AppNavigator.navigateNamedTo(AppRoutes.categoriesDetailsScreen);
              }
            },
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  height: Sizes.s56,
                  width: Sizes.s56,
                  decoration: BoxDecoration(
                    color: category.isSelected
                        ? AppColors.primary.withValues(alpha: 0.6)
                        : AppColors.white,
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: category.isSelected
                          ? AppColors.primary
                          : AppColors.lightGray20,
                    ),
                  ),
                  child: Center(
                    child: SvgImage(
                      category.iconPath,
                      color: category.id == 0
                          ? category.isSelected
                                ? null
                                : AppColors.primary
                          : null,
                    ),
                  ),
                ),
                const Gap(Sizes.s8),
                Text(
                  category.label,
                  style: AppTextStyles.style14.copyColorWith(
                    AppColors.veryDarkGray600,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class CategoryModel {
  final int id;
  final String iconPath;
  final String label;
  final Color? backgroundColor;
  final bool isSelected;

  CategoryModel({
    required this.id,
    required this.iconPath,
    required this.label,
    this.backgroundColor,
    this.isSelected = false,
  });
}
