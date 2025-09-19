import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:agricultural_crops_app/core/extensions/text_style.dart';
import 'package:pinput/pinput.dart';

import '../../../../core/utils/utils.dart';

class VerificationCodePins extends StatelessWidget {
  const VerificationCodePins({super.key});

  @override
  Widget build(BuildContext context) {
    return Pinput(
      length: 4,
      keyboardType: TextInputType.number,
      separatorBuilder: (index) => const Gap(Sizes.s20),
      showCursor: false,

      defaultPinTheme: PinTheme(
        width: Sizes.s70,
        height: Sizes.s60,
        textStyle: AppTextStyles.style16.bold.copyColorWith(
          AppColors.primaryBlack,
        ),
        decoration: BoxDecoration(
          color: AppColors.lightGray5,
          borderRadius: BorderRadius.circular(Sizes.s12),
        ),
      ),
      focusedPinTheme: PinTheme(
        width: Sizes.s70,
        height: Sizes.s60,
        textStyle: AppTextStyles.style16.bold.copyColorWith(
          AppColors.primaryBlack,
        ),
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(Sizes.s12),
          border: Border.all(color: AppColors.primary, width: 1),
        ),
      ),
      submittedPinTheme: PinTheme(
        width: Sizes.s70,
        height: Sizes.s60,
        textStyle: AppTextStyles.style16.bold.copyColorWith(
          AppColors.primaryBlack,
        ),
        decoration: BoxDecoration(
          color: AppColors.lightGray5,
          borderRadius: BorderRadius.circular(Sizes.s12),
        ),
      ),
      errorPinTheme: PinTheme(
        width: Sizes.s70,
        height: Sizes.s60,
        textStyle: AppTextStyles.style16.bold.copyColorWith(
          AppColors.primaryBlack,
        ),
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(Sizes.s12),
          border: Border.all(color: AppColors.red, width: 1),
        ),
      ),
    );
  }
}
