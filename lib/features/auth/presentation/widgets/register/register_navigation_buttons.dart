import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:agricultural_crops_app/config/routes/app_navigator.dart';
import 'package:agricultural_crops_app/config/routes/app_routes.dart';
import '../../../../../core/enums/other_details_steps_enum.dart';
import '../../../../../core/utils/utils.dart';
import '../../../../../core/widgets/main_button.dart';

class RegisterNavigationButtons extends StatefulWidget {
  final int currentStep;
  final void Function(int) setCurrentStep;
  final OtherDetailsStepsEnumOne? otherDetailsCurrentStep;
  final void Function(OtherDetailsStepsEnumOne) setCurrentOtherDetailsStep;
  const RegisterNavigationButtons({
    super.key,
    required this.currentStep,
    required this.setCurrentStep,
    this.otherDetailsCurrentStep,
    required this.setCurrentOtherDetailsStep,
  });

  @override
  State<RegisterNavigationButtons> createState() =>
      _RegisterNavigationButtonsState();
}

class _RegisterNavigationButtonsState extends State<RegisterNavigationButtons> {
  @override
  Widget build(BuildContext context) {
    bool isStepThree = widget.currentStep == 3;
    bool isStepTwo = widget.currentStep == 2;
    bool isStepOne = widget.currentStep == 1;

    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: defaultPadding,
      ).copyWith(bottom: Sizes.s12),
      child: Row(
        children: [
          Expanded(
            child: MainButton(
              backgroundColor: AppColors.primary,
              borderColor: AppColors.secondary,
              label: isStepTwo
                  ? LocaleKeys.register.tr()
                  : LocaleKeys.next.tr(),
              onPressed: () {
                if (isStepOne || isStepTwo) {
                  widget.setCurrentStep(widget.currentStep + 1);
                } else if (isStepThree) {
                  AppNavigator.navigateNamedTo(AppRoutes.mainLayoutScreen);
                }
              },
            ),
          ),
          const Gap(Sizes.s14),
          Expanded(
            child: MainButton(
              label: LocaleKeys.previous.tr(),
              onPressed: () {
                if (isStepTwo) {
                  widget.setCurrentStep(widget.currentStep - 1);
                  widget.setCurrentOtherDetailsStep(
                    OtherDetailsStepsEnumOne.stepOne,
                  );
                } else if (isStepThree) {
                  widget.setCurrentStep(widget.currentStep - 1);
                  widget.setCurrentOtherDetailsStep(
                    OtherDetailsStepsEnumOne.stepTwo,
                  );
                }
              },
              backgroundColor: AppColors.transparent,
              textColor: AppColors.black.withValues(alpha: isStepOne ? 0.2 : 1),
              borderColor: AppColors.black.withValues(
                alpha: isStepOne ? 0.2 : 1,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
