import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:agricultural_crops_app/features/home/presentation/widgets/app_bar_section.dart';
import 'package:agricultural_crops_app/features/home/presentation/widgets/home_products_section.dart';
import 'package:agricultural_crops_app/features/home/presentation/widgets/search_section.dart';
import 'package:agricultural_crops_app/features/home/presentation/widgets/categories_section.dart';

import '../../../../core/utils/utils.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isWinterSelected = true;
  int selectedCategoryId = 0;

  void _onCategoryTap(int categoryId) {
    setState(() {
      selectedCategoryId = categoryId;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            // Top padding
            SliverPadding(padding: const EdgeInsets.only(top: Sizes.s25)),

            // Header sections wrapped in SliverToBoxAdapter
            SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
              sliver: SliverList(
                delegate: SliverChildListDelegate([
                  AppBarSection(),
                  const Gap(Sizes.s25),
                  SearchSection(),
                  const Gap(Sizes.s25),
                  CategoriesSection(
                    onCategoryTap: _onCategoryTap,
                    selectedCategoryId: selectedCategoryId,
                  ),
                  const Gap(Sizes.s15),
                ]),
              ),
            ),

            // Products section - this will handle its own scrolling efficiently
            SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
              sliver: HomeProductsSection(),
            ),
          ],
        ),
      ),
    );
  }
}
