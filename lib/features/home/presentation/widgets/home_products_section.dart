import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:agricultural_crops_app/config/routes/app_navigator.dart';
import 'package:agricultural_crops_app/config/routes/app_routes.dart';
import 'package:agricultural_crops_app/features/home/presentation/widgets/product_item.dart';
import '../../../../core/utils/utils.dart';

class HomeProductsSection extends StatelessWidget {
  const HomeProductsSection({super.key});

  @override
  Widget build(BuildContext context) {
    List<ProductItem> products = [
      ProductItem(title: 'ثوم بلدي', image: AppImages.garlic),
      ProductItem(title: 'جزر', image: AppImages.carrot),
      ProductItem(title: 'طماطم', image: AppImages.tomatoImage),
    ];

    return SliverPadding(
      padding: const EdgeInsets.only(bottom: Sizes.s20),
      sliver: SliverList.separated(
        itemBuilder: (context, index) => GestureDetector(
          onTap: () =>
              AppNavigator.navigateNamedTo(AppRoutes.productDetailScreen),
          child: products[index],
        ),
        separatorBuilder: (context, index) => const Gap(Sizes.s20),
        itemCount: products.length,
      ),
    );
  }
}
