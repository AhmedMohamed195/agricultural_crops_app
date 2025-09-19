import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:agricultural_crops_app/config/routes/app_navigator.dart';
import 'package:agricultural_crops_app/config/routes/app_routes.dart';
import 'package:agricultural_crops_app/core/enums/other_details_steps_enum.dart';
import 'package:agricultural_crops_app/core/utils/app_icons.dart';
import 'package:agricultural_crops_app/core/utils/sizes.dart';
import 'package:agricultural_crops_app/core/widgets/appbar_detail_section_two.dart';
import 'package:agricultural_crops_app/features/basket/presentation/screens/basket_screen_four.dart';
import 'package:agricultural_crops_app/features/basket/presentation/screens/basket_screen_one.dart';
import 'package:agricultural_crops_app/features/basket/presentation/screens/basket_screen_three.dart';
import 'package:agricultural_crops_app/features/basket/presentation/screens/basket_screen_two.dart';
import 'package:agricultural_crops_app/features/basket/presentation/widgets/last_sections.dart';
import 'package:agricultural_crops_app/features/basket/presentation/widgets/step_indicator_basket.dart';

class BasketScreenContent extends StatefulWidget {
  const BasketScreenContent({super.key});

  @override
  State<BasketScreenContent> createState() => _BasketScreenContentState();
}

class _BasketScreenContentState extends State<BasketScreenContent> {
  int currentStep = 1;
  OtherDetailsStepsEnumOne otherDetailsCurrentStep =
      OtherDetailsStepsEnumOne.stepOne;

  void setCurrentStep(final int step) => setState(() => currentStep = step);
  void setCurrentOtherDetailsStep(final OtherDetailsStepsEnumOne step) =>
      setState(() => otherDetailsCurrentStep = step);
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
            flexibleSpace: AppBarDetailSectionTwo(
              text: "السلة",
              image1: AppIcons.arrowlef,
              onTap: () =>
                  AppNavigator.navigateNamedTo(AppRoutes.productDetailScreen),
            ),
          ),
          SliverToBoxAdapter(child: Gap(Sizes.s20)),
          SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: Sizes.s40),
            sliver: SliverToBoxAdapter(
              child: StepIndicatorBasket(currentStep: currentStep),
            ),
          ),
          SliverToBoxAdapter(child: Gap(Sizes.s20)),
          SliverToBoxAdapter(child: _buildBodyContent(currentStep)),
          SliverToBoxAdapter(child: Gap(Sizes.s20)),
        ],
      ),
      bottomNavigationBar: LastSection(
        currentStep: currentStep,
        setCurrentStep: setCurrentStep,
        setCurrentOtherDetailsStep: setCurrentOtherDetailsStep,
        text: _getStepText(currentStep),
      ),
    );
  }
}

Widget _buildBodyContent(final int currentStep) {
  switch (currentStep) {
    case 1:
      return const BasketScreenOne();
    case 2:
      return BasketScreenTwo();

    case 3:
      return BasketScreenThree();
    case 4:
      return BasketScreenFour();
    default:
      return const BasketScreenOne();
  }
}

String _getStepText(int step) {
  switch (step) {
    case 1:
      return "800 الف ";
    case 2:
      return "400 الف";
    case 3:
      return "400 الف ";
    case 4:
      return "400 الف ";
    default:
      return "0";
  }
}
