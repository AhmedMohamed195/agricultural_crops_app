import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:agricultural_crops_app/core/extensions/text_style.dart';
import 'package:agricultural_crops_app/core/widgets/svg_image.dart';
import 'package:agricultural_crops_app/features/auth/presentation/widgets/verfication_code_pins.dart';
import '../../../../config/routes/routes.dart';
import '../../../../core/utils/utils.dart';
import '../../../../core/widgets/main_button.dart';

class VerificationScreen extends StatelessWidget {
  const VerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(
            horizontal: defaultPadding,
            vertical: Sizes.s20,
          ),
          child: Align(
            alignment: AlignmentDirectional.topStart,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BackButton(color: AppColors.lightGray36),
                Gap(Sizes.s15),
                Align(
                  alignment: AlignmentDirectional.topCenter,
                  child: SvgImage(AppIcons.phone),
                ),
                Gap(Sizes.s10),
                Text(
                  LocaleKeys.codeVerification.tr(),
                  style: AppTextStyles.style16.bold.copyColorWith(
                    AppColors.primaryBlack,
                  ),
                ),
                Gap(Sizes.s10),
                RichText(
                  text: TextSpan(
                    text: LocaleKeys.codeSentTo.tr(),
                    style: AppTextStyles.style12.copyWith(
                      color: AppColors.lightGray36,
                    ),
                    children: [
                      TextSpan(text: newLine),
                      TextSpan(
                        text: '966345345345345,',
                        style: AppTextStyles.style12.copyColorWith(
                          AppColors.primaryBlack,
                        ),
                      ),
                      TextSpan(
                        text: LocaleKeys.notYou.tr(),
                        style: AppTextStyles.style12.copyColorWith(
                          AppColors.primary,
                        ),
                      ),
                    ],
                  ),
                ),
                Gap(Sizes.s20),
                VerificationCodePins(),
                Gap(Sizes.s20),
                MainButton(
                  label: LocaleKeys.login.tr(),
                  onPressed: () {
                    AppNavigator.navigateNamedTo(AppRoutes.mainLayoutScreen);
                  },
                ),
                Gap(Sizes.s20),
                Center(
                  child: RichText(
                    text: TextSpan(
                      text: LocaleKeys.didntReceiveCode.tr(),
                      style: AppTextStyles.style14.copyColorWith(
                        AppColors.lightGray36,
                      ),
                      children: [
                        TextSpan(text: whiteSpace),
                        TextSpan(
                          text: LocaleKeys.resendCode.tr(),
                          style: AppTextStyles.style14.bold.copyWith(
                            color: AppColors.primaryBlack,
                            letterSpacing: 0.5,
                          ),
                        ),
                        TextSpan(text: whiteSpace),
                        TextSpan(
                          text: "(23)",
                          style: AppTextStyles.style14.bold.copyWith(
                            color: AppColors.primaryBlack,
                            letterSpacing: 0.5,
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
      ),
    );
  }
}
