import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:agricultural_crops_app/config/routes/app_navigator.dart';
import 'package:agricultural_crops_app/config/routes/app_routes.dart';
import 'package:agricultural_crops_app/core/utils/utils.dart';
import 'package:agricultural_crops_app/core/widgets/appbar_detail_section_one.dart';
import 'package:agricultural_crops_app/features/categorie_details/presentation/widgets/categories_product_section.dart';

class CategoriesDetailsScreen extends StatefulWidget {
  const CategoriesDetailsScreen({super.key});

  @override
  State<CategoriesDetailsScreen> createState() =>
      _CategoriesDetailsScreenState();
}

class _CategoriesDetailsScreenState extends State<CategoriesDetailsScreen> {
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
              text: LocaleKeys.tomato.tr(),
              image1: AppIcons.arrowlef,
              image2: AppIcons.slidersVerticalAlt,
              onTap: () => AppNavigator.navigateNamedTo(AppRoutes.homeScreen),
            ),
          ),

          SliverPadding(
            padding: EdgeInsets.symmetric(
              horizontal: Sizes.s25,
              vertical: Sizes.s20,
            ),
            sliver: CategoriesProductSection(),
          ),
          const SliverToBoxAdapter(child: Gap(Sizes.s20)),
        ],
      ),
    );
  }
}
