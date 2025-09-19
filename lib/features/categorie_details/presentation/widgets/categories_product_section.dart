import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:agricultural_crops_app/core/utils/app_images.dart';
import 'package:agricultural_crops_app/core/utils/sizes.dart';
import 'package:agricultural_crops_app/features/categorie_details/presentation/widgets/categories_item_section.dart';

class CategoriesProductSection extends StatelessWidget {
  const CategoriesProductSection({super.key});

  @override
  Widget build(BuildContext context) {
    List<CategoriesItemSection> products = [
      CategoriesItemSection(image: AppImages.tomatoImage),
      CategoriesItemSection(image: AppImages.tomatoImage),
      CategoriesItemSection(image: AppImages.tomatoImage),
      CategoriesItemSection(image: AppImages.tomatoImage),
    ];
    return SliverList.separated(
      separatorBuilder: (context, index) => const Gap(Sizes.s20),
      itemCount: products.length,
      itemBuilder: (context, index) => products[index],
    );
  }
}
