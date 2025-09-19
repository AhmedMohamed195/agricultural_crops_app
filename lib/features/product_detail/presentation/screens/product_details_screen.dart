import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:agricultural_crops_app/config/routes/app_navigator.dart';
import 'package:agricultural_crops_app/config/routes/app_routes.dart';
import 'package:agricultural_crops_app/core/utils/utils.dart';
import 'package:agricultural_crops_app/core/widgets/appbar_detail_section_one.dart';
import 'package:agricultural_crops_app/features/product_detail/presentation/widgets/slider_section.dart';
import 'package:agricultural_crops_app/features/product_detail/presentation/widgets/switch_section.dart';
import 'package:agricultural_crops_app/features/product_detail/presentation/screens/data_detail_screen.dart';
import 'package:agricultural_crops_app/features/product_detail/presentation/screens/sale_date_detail_screen.dart';

class ProductDetailScreen extends StatefulWidget {
  const ProductDetailScreen({super.key});

  @override
  State<ProductDetailScreen> createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  final ValueNotifier<int> _tabIndexNotifier = ValueNotifier(0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            backgroundColor: Colors.white,
            automaticallyImplyLeading: false,
            toolbarHeight: Sizes.s60,
            flexibleSpace: AppBarDetailSectionOne(
              text: LocaleKeys.productDetails.tr(),
              image1: AppIcons.arrowlef,
              image2: AppIcons.heart,
              onTap: () => AppNavigator.navigateNamedTo(AppRoutes.homeScreen),
            ),
          ),

          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: Sizes.s20,
                vertical: Sizes.s20,
              ),
              child: SliderSection(),
            ),
          ),

          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(
                left: Sizes.s25,
                right: Sizes.s25,
                bottom: Sizes.s20,
              ),
              child: SwitchPage(tabIndexNotifier: _tabIndexNotifier),
            ),
          ),
          SliverFillRemaining(
            hasScrollBody: false,
            child: ValueListenableBuilder<int>(
              valueListenable: _tabIndexNotifier,
              builder: (context, currentIndex, _) {
                if (currentIndex == 0) {
                  return const DataDetailScreen();
                } else {
                  return const SaleDateScreen();
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
