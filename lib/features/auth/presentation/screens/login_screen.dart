import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:agricultural_crops_app/config/routes/app_navigator.dart';
import 'package:agricultural_crops_app/core/extensions/text_style.dart';
import 'package:agricultural_crops_app/core/utils/utils.dart';
import 'package:agricultural_crops_app/core/widgets/main_button.dart';
import 'package:agricultural_crops_app/core/widgets/svg_image.dart';
import 'package:agricultural_crops_app/features/auth/presentation/widgets/skip_button.dart';

import '../../../../config/routes/app_routes.dart';
import '../widgets/phone_number_section.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(
            horizontal: defaultPadding,
            vertical: Sizes.s12,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SkipButton(),
              const Gap(Sizes.s30),
              Center(
                child: Column(
                  children: [
                    SvgImage(
                      AppImages.appLogo,
                      height: Sizes.s72,
                      width: Sizes.s72,
                    ),
                    const Gap(Sizes.s18),
                    Text(
                      LocaleKeys.appName.tr(),
                      style: AppTextStyles.style18.copyColorWith(
                        AppColors.veryDarkGray600,
                      ),
                    ),
                  ],
                ),
              ),
              const Gap(Sizes.s80),
              Text(
                LocaleKeys.login.tr(),
                style: AppTextStyles.style22.bold.copyColorWith(
                  AppColors.veryDarkGray500,
                ),
              ),
              const Gap(Sizes.s8),
              Text(
                LocaleKeys.loginWithPhoneNumber.tr(),
                style: AppTextStyles.style14.copyColorWith(
                  AppColors.lightGray34,
                ),
              ),
              const Gap(Sizes.s40),
              const PhoneNumberSection(),
              const Gap(Sizes.s20),
              MainButton(
                label: LocaleKeys.login.tr(),
                onPressed: () {
                  AppNavigator.navigateNamedTo(AppRoutes.verificationScreen);
                },
              ),
              const Gap(Sizes.s20),
              Center(
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    text: LocaleKeys.newUserQuestion.tr(),
                    style: AppTextStyles.style14.bold.copyColorWith(
                      AppColors.lightGray36,
                    ),
                    children: [
                      TextSpan(text: whiteSpace),
                      TextSpan(
                        text: LocaleKeys.signUp.tr(),
                        style: AppTextStyles.style14.copyColorWith(
                          AppColors.primaryBlack,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () => AppNavigator.navigateNamedTo(
                            AppRoutes.registerScreen,
                          ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
