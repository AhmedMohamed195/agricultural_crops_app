import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:agricultural_crops_app/config/routes/app_navigator.dart';
import 'package:agricultural_crops_app/config/routes/app_routes.dart';
import 'package:agricultural_crops_app/core/utils/app_colors.dart';
import 'package:agricultural_crops_app/core/utils/app_text_styles.dart';
import 'package:agricultural_crops_app/core/utils/sizes.dart';
import 'package:agricultural_crops_app/core/widgets/svg_image.dart';
import 'package:agricultural_crops_app/features/on_boarding/data/datasources/dummy_data.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreenBody extends StatefulWidget {
  const OnBoardingScreenBody({super.key});

  @override
  State<OnBoardingScreenBody> createState() => _OnBoardingScreenBodyState();
}

class _OnBoardingScreenBodyState extends State<OnBoardingScreenBody> {
  final PageController _controller = PageController();
  int currentIndex = 0;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Positioned(
              left: 0,
              right: 0,
              child: SvgImage(
                pages[currentIndex]["background"]!,
                height: 480,
                fit: BoxFit.fill,
              ),
            ),

            Column(
              children: [
                const SizedBox(height: Sizes.s220),
                SizedBox(
                  height: 500,
                  child: PageView.builder(
                    controller: _controller,
                    itemCount: pages.length,
                    onPageChanged: (index) {
                      setState(() => currentIndex = index);
                    },
                    itemBuilder: (context, index) {
                      final page = pages[index];
                      return Column(
                        children: [
                          SizedBox(
                            height: Sizes.s250,
                            width: 300,
                            child: SvgImage(
                              page["image"]!,
                              fit: BoxFit.contain,
                            ),
                          ),
                          const Gap(Sizes.s60),
                          Text(
                            page["title"]!,
                            style: AppTextStyles.style22.copyWith(
                              color: AppColors.veryDarkGray500,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          const Gap(Sizes.s5),
                          Text(
                            page["subtitle"]!,
                            textAlign: TextAlign.center,
                            style: AppTextStyles.style14.copyWith(
                              color: AppColors.veryDarkGray600,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          const Gap(Sizes.s70),
                          GestureDetector(
                            onTap: () {
                              if (currentIndex == pages.length - 1) {
                                AppNavigator.navigateNamedTo(
                                  AppRoutes.loginScreen,
                                );
                              } else {
                                _controller.nextPage(
                                  duration: const Duration(milliseconds: 400),
                                  curve: Curves.easeInOut,
                                );
                              }
                            },
                            child: Container(
                              height: Sizes.s50,
                              width: 190,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(Sizes.s15),
                                color: AppColors.primary,
                                border: Border.all(
                                  color: AppColors.secondary,
                                  width: 1.5,
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  page["button"]!,
                                  style: AppTextStyles.style16.copyWith(
                                    fontWeight: FontWeight.w700,
                                    color: AppColors.surface,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),
                const Gap(Sizes.s30),
                SmoothPageIndicator(
                  controller: _controller,
                  count: pages.length,
                  effect: const ExpandingDotsEffect(
                    dotHeight: 10,
                    dotWidth: 10,
                    spacing: 8,
                    expansionFactor: 3,
                    activeDotColor: AppColors.orange300,
                    dotColor: Colors.grey,
                  ),
                ),
                const Gap(Sizes.s20),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
